#include "ast_primitives.h"
#include "llvm/DerivedTypes.h"

AST::Primitive AST::ParsePrimitive(const std::string & text) {
	if (text == "void")
		return Void;
	else if (text == "int")
		return Int;
		
	throw std::runtime_error("unknown primitive type: '" + text);
}

const llvm::Type * AST::TypeFromPrimitive(AST::Primitive primitive) {
	switch (primitive) {
		case AST::Void:
			return llvm::Type::getVoidTy(llvm::getGlobalContext());
		
		case AST::Int:
			return llvm::Type::getInt32Ty(llvm::getGlobalContext());
	}
	
	throw std::runtime_error("unknown primitive type");
}