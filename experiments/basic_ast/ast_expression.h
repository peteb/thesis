#ifndef AST_EXPRESSION_H_FEK5HO2T
#define AST_EXPRESSION_H_FEK5HO2T

namespace llvm {
	class Value;
	class Module;
	class BasicBlock;
}

class Namespace;

namespace AST {
	class Expression {
	public:
		virtual ~Expression() {}
		virtual llvm::Value * generateCode(Namespace & ns, llvm::Module * module, llvm::BasicBlock * block) const =0;
	};
}

#endif /* end of include guard: AST_EXPRESSION_H_FEK5HO2T */
