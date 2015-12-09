#ifndef AST_MATH_H_E5WMMH6R
#define AST_MATH_H_E5WMMH6R

#include "ast_expression.h"
#include <vector>

namespace AST {
	enum MathType {
		MathAdd = 1,
		MathLast
	};
	
	class Math : public Expression {
	public:	
		Math(MathType type);
		llvm::Value * generateCode(Namespace & ns, llvm::Module * module, llvm::BasicBlock * block) const;
		
		void addOperand(AST::Expression * operand);
		
	private:
		llvm::Value * generateAddition(Namespace & ns, llvm::Module * module, llvm::BasicBlock * block) const;
		llvm::Value * generateLast(Namespace & ns, llvm::Module * module, llvm::BasicBlock * block) const;


		MathType _type;
		std::vector<AST::Expression *> _operands;
	};
}

#endif /* end of include guard: AST_MATH_H_E5WMMH6R */
