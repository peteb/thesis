/*
 * $Id: tree_printer.h 1205 2010-04-26 11:58:38Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef AST_TREE_PRINTER_H_W4YQLSSG
#define AST_TREE_PRINTER_H_W4YQLSSG

#include "ast/visitor.h"

#include <string>

namespace AST {
	class TreePrinter : public AST::Visitor {
	public:
		TreePrinter(std::string & res, unsigned level = 0);
		
		void visit(AST::Unit & unit);
		void visit(AST::Block & block);
		void visit(AST::Vardef & vardef);
		void visit(AST::Literal & literal);
		void visit(AST::Closure & closure);
		void visit(AST::Var & var);
		void visit(AST::Object & object);
		void visit(AST::MethodCall & mcall);
		void visit(AST::If & ifexpr);
		void visit(AST::Return & retexpr);
		void visit(AST::Assignment & assig);
		void visit(AST::While & whileexpr);
		void visit(AST::Array & array);
		void visit(AST::Try & tryexpr);
		void visit(AST::Throw & throwexpr);
		void visit(AST::Spawn & spawn);
		void visit(AST::Send & send);
		
	private:
		void appendResult(unsigned offsetLevel, const std::string & res);
		TreePrinter offsetPrinter(unsigned offsetLevel);
		
		static std::string LevelIndent(unsigned level);
		unsigned _level;
		std::string & _result;
	};
}

#endif /* end of include guard: AST_TREE_PRINTER_H_W4YQLSSG */
