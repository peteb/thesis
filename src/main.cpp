/*
 * $Id: main.cpp 1893 2010-07-17 13:24:45Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved.
 */

#if HAVE_CONFIG_H
	#include <config.h>
#else
	#ifndef VERSION
		#define VERSION "n/a"
	#endif
#endif

#include <iostream>
#include <fstream>
#include <sstream>
#include <exception>
#include <vector>
#include <string>

#include "ast/parser.h"
#include "ast/unit.h"
#include "libthorn/config.h"
// #include "module.h"
#include "modgen.h"
#include "json_parser.h"
#include "lexscope.h"
#include "str_util.h"
#include "ast/const_precalc.h"
#include "ast/tree_printer.h"

#include <llvm/Module.h>
#include <llvm/PassManager.h>
#include <llvm/Analysis/Verifier.h>
#include <llvm/Assembly/PrintModulePass.h>
#include <llvm/Bitcode/ReaderWriter.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/Support/CommandLine.h>
#include <llvm/Support/PrettyStackTrace.h>
#include <llvm/Support/ManagedStatic.h>
#include <llvm/System/Signals.h>

//namespace llvm {class Module; }
using namespace llvm;

static std::string version_string();


cl::opt<ExceptionHandling> EHandling("eh", cl::desc("Exception handling:"),
    cl::values(
        #ifdef EH_MRV
        clEnumValN(MRVExceptions, "mrv", "Multiple return values"),
        #endif
        clEnumValN(NoExceptions, "none", "No exception handling"),
        clEnumValEnd
    )
);
    
cl::opt<std::string> OutputFilename("o", cl::desc("Specify output filename"),
    cl::value_desc("filename")
);

cl::opt<std::string> InputFilename(cl::Positional, cl::desc("<input file>"),
    cl::init("-")
);

cl::list<std::string> Libraries("l", cl::desc("Library dependencies"), cl::Prefix);

cl::opt<std::string> ModuleName("mname", cl::desc("Override module name"));
cl::opt<bool> EmitAst("emit-ast", cl::desc("Pretty-print AST to <stdout>"));
cl::opt<bool> EmitLl("emit-ll", cl::desc("Print textual bitcode to <stdout>"));
cl::opt<bool> DisableVerify("disable-verify", cl::Hidden,
    cl::desc("Do not run verifier on input LLVM (dangerous!)")
);
cl::opt<bool> AsLib("as-lib", cl::desc("Generate dynamic library"));


int main(int argc, char ** argv) {
    int exitCode = EXIT_SUCCESS;
    
    sys::PrintStackTraceOnErrorSignal();
    PrettyStackTraceProgram X(argc, argv);
    llvm_shutdown_obj Y;
      
    cl::ParseCommandLineOptions(argc, argv, 
        "core ast -> .bc compiler\n"
    );
    
    typedef std::vector<std::string> argument_list;
    
    try {
        if (ModuleName.empty())
            ModuleName = InputFilename;
            
        std::auto_ptr<AST::Unit> syntaxTree(parse_file(InputFilename));
        
        // EmitAst is for outputting the AST to stdout, if EmitLl is set
        // it will prefix all lines with ; (semicolons are comments in .ll files)
        if (EmitAst) {
			std::string astString;
			AST::TreePrinter printer(astString);
			syntaxTree->accept(printer);
			
			if (EmitLl) {
				string_commentize(astString);
			}
			
			outs() << astString;
		}
		
		// create llvm module	
		std::auto_ptr<llvm::Module> mod;
		ModuleGen modgen;
		modgen.setName(ModuleName);
		modgen.setExceptionHandling(EHandling);
		
		for (unsigned i = 0; i < Libraries.size(); ++i) {
			std::string lib = Libraries[i];
			std::string::size_type lastSlash = lib.find_last_of("/");
			
			if (lastSlash != std::string::npos) {
				lib = lib.substr(lastSlash + 1);
			}
			
			modgen.addDependency(lib);
		}
		
		if (AsLib)
			mod.reset(modgen.createLibrary(syntaxTree.get()));				
		else
			mod.reset(modgen.createTool(syntaxTree.get()));
		
		assert(mod.get() && "no module created");
		llvm::PassManager passes;

		// postprocess module, and print
		if (!DisableVerify)
			llvm::verifyModule(*mod, llvm::PrintMessageAction);

		if (EmitLl) {
			passes.add(llvm::createPrintModulePass(&llvm::outs()));
		}

		// output bitcode to file
		std::ofstream outputFile(OutputFilename.c_str(), std::ios::binary);
		passes.add(llvm::CreateBitcodeWriterPass(outputFile));

		// run all passes
		passes.run(*mod);		
		
		
		
			
    } catch (const std::string& msg) {
        errs() << argv[0] << ": " << msg << "\n";
        exitCode = EXIT_FAILURE;
    } catch (...) {
        errs() << argv[0] << ": Unexpected unknown exception occurred.\n";
        exitCode = EXIT_FAILURE;
    }
    
    return exitCode;
}


std::string version_string() {
	std::stringstream ss;
	ss << "thorn-llvm v. "
		<< VERSION
		<< " (built " <<  __DATE__
		<< " " << __TIME__ << ")"
	;
	
	#ifdef EH_MRV
	ss << " eh: mrv";
	#else
	ss << " eh: none";
	#endif

	return ss.str();
}
