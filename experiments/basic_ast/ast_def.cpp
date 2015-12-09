#include "ast_def.h"
#include "llvm/Module.h"
#include "llvm/Function.h"
#include "llvm/CallingConv.h"
#include "llvm/Type.h"
#include "llvm/DerivedTypes.h"
#include "llvm/Support/IRBuilder.h"
#include "namespace.h"
#include "ast_corefuncs.h"

#include <iostream>

using namespace llvm;

AST::Def::Def(AST::Primitive returnType, const std::string & name) 
	: name(name)
	, returnType(returnType)
{
	_body = NULL;
}

llvm::Value * AST::Def::generateCode(Namespace & ns, llvm::Module * module, llvm::BasicBlock * block) const {
	const Type * returnType = IntegerType::get(getGlobalContext(), 32);
	const FunctionType * ft = FunctionType::get(returnType, createParameterTypes(), false);
	Function * function = Function::Create(ft, Function::ExternalLinkage, name, module);
	BasicBlock * funcBlock = BasicBlock::Create(getGlobalContext(), "entry", function);
	
	Namespace functionNS(ns);
	
	int index = 0;
	for (Function::arg_iterator iter = function->arg_begin(); iter != function->arg_end(); ++iter) {
		iter->setName(parameters.at(index).second);
		// functionNS.insertValue(iter->getName(), iter);
		index++;
	}
	
	IRBuilder<> builder(funcBlock);
	
	if (_body) {
		builder.CreateRet(_body->generateCode(functionNS, module, funcBlock));
	}
	else {
		builder.CreateRetVoid();	// even if the returntype is != void..
	}
	
	// ns.insertValue(name, function);
	// ns.insertGenerator(name, new AST::CallFun(function));
	
	return function;
}

void AST::Def::addParameter(AST::Primitive type, const std::string & name) {
	parameters.push_back(Parameter(type, name));
}

void AST::Def::setBody(AST::Expression * body) {
	delete _body;
	_body = body;
}

std::vector<const llvm::Type *> AST::Def::createParameterTypes() const {
	std::vector<const llvm::Type *> ret;
	
	for (unsigned i = 0; i < parameters.size(); ++i) {
		ret.push_back(AST::TypeFromPrimitive(parameters[i].first));
	}
	
	return ret;
}