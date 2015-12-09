/*
 * $Id: visitor.h 1339 2010-05-05 13:28:36Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef AST_VISITOR_H_7O5BH3K9
#define AST_VISITOR_H_7O5BH3K9

namespace AST {
	class Unit;
	class Block;
	class Vardef;
	class Literal;
	class Closure;
	class Var;
	class Object;
	class MethodCall;
	class If;
	class Return;
	class Assignment;
	class While;
	class Array;
	class Try;
	class Throw;
	class Spawn;
	class Send;
	
	class Visitor {
	public:
		virtual ~Visitor() {}
	
		virtual void visit(AST::Unit & unit);
		virtual void visit(AST::Block & block);
		virtual void visit(AST::Vardef & vardef);
		virtual void visit(AST::Literal & literal);
		virtual void visit(AST::Closure & closure);
		virtual void visit(AST::Var & var);
		virtual void visit(AST::Object & object);
		virtual void visit(AST::MethodCall & mcall);
		virtual void visit(AST::If & ifexpr);
		virtual void visit(AST::Return & retexpr);
		virtual void visit(AST::Assignment & assig);
		virtual void visit(AST::While & whileexpr);
		virtual void visit(AST::Array & array);
		virtual void visit(AST::Try & tryexpr);
		virtual void visit(AST::Throw & throwexpr);
		virtual void visit(AST::Spawn & spawn);
		virtual void visit(AST::Send & send);
	};
	
	class DelegateVisitor : public AST::Visitor {
	public:
		DelegateVisitor(AST::Visitor & delegate);
		virtual ~DelegateVisitor() {}
	
		virtual void visit(AST::Unit & unit);
		virtual void visit(AST::Block & block);
		virtual void visit(AST::Vardef & vardef);
		virtual void visit(AST::Literal & literal);
		virtual void visit(AST::Closure & closure);
		virtual void visit(AST::Var & var);
		virtual void visit(AST::Object & object);
		virtual void visit(AST::MethodCall & mcall);
		virtual void visit(AST::If & ifexpr);
		virtual void visit(AST::Return & retexpr);
		virtual void visit(AST::Assignment & assig);
		virtual void visit(AST::While & whileexpr);
		virtual void visit(AST::Array & array);
		virtual void visit(AST::Try & tryexpr);
		virtual void visit(AST::Throw & throwexpr);
		virtual void visit(AST::Spawn & spawn);
		virtual void visit(AST::Send & send);		

	private:
		AST::Visitor & _delegate;
	};
}

#endif /* end of include guard: AST_VISITOR_H_7O5BH3K9 */
