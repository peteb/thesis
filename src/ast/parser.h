/*
 * $Id: parser.h 819 2010-03-25 13:44:17Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef PARSER_H_LL8J3FAU
#define PARSER_H_LL8J3FAU

#include "literal.h"

namespace Json {
	class Value;
}

namespace AST {
	class Expression;
	class Unit;
	class Vardef;
	class Literal;
	class Closure;
	class Var;
	class Block;
	class MethodCall;
	class Object;
	class If;
	class Assignment;
	class While;
	class Try;
	class Array;
	
	class Parser {
	public:
		AST::Expression * parse(const Json::Value & node);
		
	private:
		AST::Unit * parseUnit(const Json::Value & node);
		AST::Block * parseBlock(const Json::Value & node);
		AST::Vardef * parseVardef(const Json::Value & node);
		AST::Literal * parseLiteral(const Json::Value & node);
		AST::Closure * parseClosure(const Json::Value & node);
		AST::Var * parseVar(const Json::Value & node);
		AST::MethodCall * parseMethodCall(const Json::Value & node);
		AST::Object * parseObject(const Json::Value & node);
		AST::If * parseIf(const Json::Value & node);
		AST::Assignment * parseAssignment(const Json::Value & node);
		AST::While * parseWhile(const Json::Value & node);
		AST::Try * parseTry(const Json::Value & node);
		AST::Array * parseArray(const Json::Value & node);
		
		// smaller helpers
		AST::LiteralType parseLiteralType(const std::string & typestr);
		
	};
}

#endif /* end of include guard: PARSER_H_LL8J3FAU */
