#include "ast_parser.h"
#include "ast_val.h"
#include "ast_def.h"
#include "ast_primitives.h"
#include "config/propertynode.h"
#include "lexical_cast.h"
#include <iostream>
#include <memory>


#include "ast_cfunc.h"
#include "ast_corefuncs.h"

AST::Parser::Parser() {
	_functions["VAL"] = new AST::ValFun;
	_functions["DEF"] = new AST::DefFun;
	_functions["+"] = new AST::OpFun(AST::MathAdd);
	_functions["LAST"] = new AST::OpFun(AST::MathLast);
}

AST::Expression * AST::Parser::parse(const PropertyNode & node) {	
	// TODO: styr upp det här
	if (node.getNumNodes() > 0) {
		const PropertyNode & currentNode = node.getNode(0);
	
		CFuncMap::const_iterator iter = _functions.find(currentNode.getName());
		if (iter != _functions.end()) {
			return iter->second->execute(*this, currentNode);
		}
	}
	else {
		std::string currentProperty = node.getProperty("0");
		
		if (currentProperty[0] == '$') {		// it's a deref
			PropertyNode newNode("VAL");
			newNode.addProperty(Property("0", currentProperty));

			CFuncMap::const_iterator iter = _functions.find(newNode.getName());
			if (iter != _functions.end()) {
				return iter->second->execute(*this, newNode);
			}		
		}
	}
	
	throw std::runtime_error("invalid instruction in: " + node.getName());
}
