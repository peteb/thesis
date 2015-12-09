#include <iostream>
#include <cassert>

/*
 * A simple language described by an AST compiled into LLVM IR
 * The AST is parsed from a textual representation and is constructed in memory
 *
 */

#include "llvm/IR/Module.h"
#include "llvm/PassManager.h"
#include "llvm/IR/Verifier.h"
#include <llvm/IR/IRPrintingPasses.h>
#include "llvm/Bitcode/ReaderWriter.h"
#include "llvm/Support/raw_ostream.h"

#include "config/propertytreeparser.h"
#include "config/propertytreeprinter.h"
#include "ast_parser.h"
#include "ast_expression.h"
#include "namespace.h"
#include <fstream>
#include <iostream>

llvm::Module * CreateModule(AST::Expression * tree);

int main(int argc, char ** argv) {
        assert(argc > 1);

        const std::string inputFilename = argv[1];
        std::ifstream file(inputFilename.c_str());
        assert(file);

        std::string data;
        std::string line;

        while (std::getline(file, line))
                data += line;

        file.close();

        std::cerr << "Input file contents:" << std::endl;
        std::cerr << data << std::endl << std::endl;

        PropertyTreeParser parser;
        PropertyNode tree = parser.parse(data);


        std::cerr << "Parsed:" << std::endl;
        PropertyTreePrinter printer(std::cerr);
        printer.print(tree);
        std::cerr << std::endl;


        AST::Parser llvmParser;
        AST::Expression * astTree = llvmParser.parse(tree);

        std::cerr << "Creating llvm module..." << std::endl;
        llvm::Module * mod = CreateModule(astTree);
        assert(mod);

        std::cerr << "Verifying module..." << std::endl;

        llvm::verifyModule(*mod, llvm::PrintMessageAction);
        llvm::PassManager passes;
        passes.add(llvm::createPrintModulePass(&llvm::outs()));
        passes.run(*mod);

        delete mod;
}

llvm::Module * CreateModule(AST::Expression * tree) {
        llvm::Module * mod = new llvm::Module("name", llvm::getGlobalContext());
        llvm::BasicBlock * globalBlock = llvm::BasicBlock::Create(llvm::getGlobalContext());

        Namespace globalNamespace;
        tree->generateCode(globalNamespace, mod, globalBlock);

        return mod;
}
