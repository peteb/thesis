#ifndef AST_VAL_H_AC5TCAEO
#define AST_VAL_H_AC5TCAEO

#include "ast_expression.h"
#include <string>

namespace AST {
	class Val : public Expression {
	public:	
		Val(const std::string & value);
		
		llvm::Value * generateCode(Namespace & ns, llvm::Module * module, llvm::BasicBlock * block) const;
	
	private:
		std::string _value;
	};
}

#endif /* end of include guard: AST_VAL_H_AC5TCAEO */
