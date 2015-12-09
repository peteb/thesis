/*
 * $Id: modgen.h 1205 2010-04-26 11:58:38Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved.
 */

#ifndef MODGEN_H_AVIXRKIN
#define MODGEN_H_AVIXRKIN

#include <vector>
#include <llvm/IR/IRBuilder.h>

#include "builder.h"

namespace llvm {class Module; class Function; class Type; }
namespace AST {class Unit; }

class LexScope;
class LexScopeEntry;
class Builder;


class ModuleGen {
public:
        ModuleGen();

        llvm::Module * createTool(AST::Unit * unit);
        llvm::Module * createLibrary(AST::Unit * unit);

        void addDependency(const std::string & library);
        void setName(const std::string & name);
        void setExceptionHandling(ExceptionHandling eh);

        static ExceptionHandling ParseEH(const std::string & str);

private:
        void executeDeclares(llvm::Module * mod);
        void initializeDependencies(Builder & builder);

        LexScopeEntry * createGlobalPoint(const std::string & sym, llvm::Module * mod);

        llvm::Function * createFunction(
                llvm::Type * ret,
                const std::string & name,
                const std::vector<llvm::Type *> & parameters,
                llvm::Module * mod
        );

        std::vector<std::string> _dependencies;
        std::string _name;
        ExceptionHandling _eh;
};

#endif /* end of include guard: MODGEN_H_AVIXRKIN */
