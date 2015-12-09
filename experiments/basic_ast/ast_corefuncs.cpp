#include "ast_corefuncs.h"
#include "ast_val.h"
#include "ast_def.h"
#include "ast_math.h"
#include "ast_parser.h"
#include "lexical_cast.h"
#include "config/propertynode.h"

AST::Expression * AST::DefFun::execute(Parser & parser, const PropertyNode & node) const {
	const std::string rettype = node.getAttribute(0);
	const std::string name = node.getAttribute(1);
	
	std::auto_ptr<AST::Def> newDefinition(new AST::Def(AST::ParsePrimitive(rettype), name));

	for (int i = 2; i < node.getNumAttributes(); i += 2) {
		const std::string paramType = node.getAttribute(i);
		const std::string paramName = node.getAttribute(i + 1);
		
		newDefinition->addParameter(AST::ParsePrimitive(paramType), paramName);
	}
	
	newDefinition->setBody(parser.parse(node));
	
	return newDefinition.release();
}

AST::Expression * AST::ValFun::execute(Parser & parser, const PropertyNode & node) const {
	return new AST::Val(node.getProperty("0"));
}

AST::OpFun::OpFun(AST::MathType optype) : _optype(optype) {}

AST::Expression * AST::OpFun::execute(Parser & parser, const PropertyNode & node) const {
	AST::Math * mathop = new AST::Math(_optype);
	
	for (int i = 0; i < node.getNumNodes(); ++i) {
		mathop->addOperand(parser.parse(node.getNode(lexical_cast<std::string>(i))));		
	}
	
	return mathop;
}


AST::Expression * AST::CallFun::execute(Parser & parser, const PropertyNode & node) const {
	return new AST::Val("1337");
}
