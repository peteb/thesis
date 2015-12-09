#ifndef AST_CFUNC_H_K52V8L5B
#define AST_CFUNC_H_K52V8L5B

class PropertyNode;

namespace AST {
	class Expression;
	class Parser;
	
	class CompileFunction {
	public:
		virtual ~CompileFunction() {}
		
		virtual AST::Expression * execute(Parser & parser, const PropertyNode & node) const =0;
	};
}

#endif /* end of include guard: AST_CFUNC_H_K52V8L5B */
