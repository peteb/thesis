/*
 * $Id: closure.h 1280 2010-05-02 18:21:34Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef CLOSURE_H_K2S1MRVX
#define CLOSURE_H_K2S1MRVX

#include "expression.h"
#include <vector>

namespace AST {
	class Vardef;
	
	class Closure : public Expression {
	public:
		Closure();
		~Closure();
		
		llvm::Value * genCode(Builder & builder) const;	
		void accept(AST::Visitor & visitor);					
		
		void addParameter(AST::Vardef * param);
		void setBody(AST::Expression * body);
		void setReassignThis(bool reassign);
		
		unsigned numFormals() const;
		AST::Vardef * getFormal(unsigned i);
		AST::Expression * getBody() const;
		
	private:
		typedef std::pair<std::string, std::string> SlotBinding;
		
		void bindFormals(Builder & builder) const;
		void bindParameters(llvm::Function * function, Builder & builder) const;
		llvm::FunctionType * getFunctionType(Builder & builder) const;
		
		std::vector<SlotBinding> prepareUpvalues(const std::vector<std::string> & _vars, 
			Builder & caller, Builder & callee) const
		;
		
		std::vector<AST::Vardef *> _formals;				
		AST::Expression * _body;
		bool _reassignThis;
	};
	
}

#endif /* end of include guard: CLOSURE_H_K2S1MRVX */
