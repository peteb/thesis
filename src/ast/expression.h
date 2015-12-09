/*
 * $Id: expression.h 1091 2010-04-18 23:07:50Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef EXPRESSION_H_GAFHE3TL
#define EXPRESSION_H_GAFHE3TL

#include <string>
#include <llvm/Support/IRBuilder.h>

namespace llvm {
	class Value;
	class Module;
}

class LexScope;
class Builder;

namespace AST {
	class Expression;
	class Visitor;
	
	class Expression {
	public:
		virtual ~Expression() {}
		
		virtual llvm::Value * genCode(Builder & builder) const =0;
		virtual void accept(AST::Visitor & visitor) =0;
		virtual void replaceNode(AST::Expression * _node) {};
		
		virtual bool isConstant() const;
	};
}

#endif /* end of include guard: EXPRESSION_H_GAFHE3TL */
