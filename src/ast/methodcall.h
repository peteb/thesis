/*
 * $Id: methodcall.h 1112 2010-04-19 10:51:33Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef METHODCALL_H_RXW7L5Y2
#define METHODCALL_H_RXW7L5Y2

#include "expression.h"
#include <vector>
#include <map>

namespace llvm {
	class Value;
	class Constant;
}

namespace AST {
	class MethodCall : public Expression {
	public:
		MethodCall(const std::string & name);
		~MethodCall();
		
		llvm::Value * genCode(Builder & builder) const;	
		void accept(AST::Visitor & visitor);					
		
		void setTarget(AST::Expression * target);
		void addArgument(AST::Expression * argument);
		
		const std::string & getName() const;
		AST::Expression * getTarget() const;
		unsigned numArguments() const;
		AST::Expression * getArgument(unsigned i) const;
		
	private:		
		typedef std::map<std::string, llvm::Constant *> IdentifierMap;
		static IdentifierMap _identifiers;
		
		const std::string _name;
		AST::Expression * _target;
		std::vector<AST::Expression *> _arguments;
	};
	
}

#endif /* end of include guard: METHODCALL_H_RXW7L5Y2 */
