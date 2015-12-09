#ifndef AST_COREFUNCS_H_S8RAJPYW
#define AST_COREFUNCS_H_S8RAJPYW

#include "ast_cfunc.h"
#include "ast_math.h"

namespace AST {
	class DefFun : public AST::CompileFunction {
	public:
		AST::Expression * execute(Parser & parser, const PropertyNode & node) const;
	};
	
	class ValFun : public AST::CompileFunction {
	public:
		AST::Expression * execute(Parser & parser, const PropertyNode & node) const;
	};

	class OpFun : public AST::CompileFunction {
	public:
		OpFun(AST::MathType optype);
		
		AST::Expression * execute(Parser & parser, const PropertyNode & node) const;
		
	private:
		AST::MathType _optype;
	};
	
	class CallFun : public AST::CompileFunction {
	public:
		AST::Expression * execute(Parser & parser, const PropertyNode & node) const;
	};
}

#endif /* end of include guard: AST_COREFUNCS_H_S8RAJPYW */
