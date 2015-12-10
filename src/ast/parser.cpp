/*
 * $Id: parser.cpp 1290 2010-05-03 15:29:19Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved.
 */

#include "parser.h"
#include "json/json.h"
#include "expression.h"
#include "unit.h"
#include "vardef.h"
#include "literal.h"
#include "closure.h"
#include "var.h"
#include "block.h"
#include "methodcall.h"
#include "object.h"
#include "if.h"
#include "return.h"
#include "assignment.h"
#include "while.h"
#include "try.h"
#include "throw.h"
#include "spawn.h"
#include "send.h"
#include "array.h"

#include <iostream>
#include <stdexcept>
#include <cassert>

AST::Expression * AST::Parser::parse(const Json::Value & node) {
        assert(!node.empty());
        const std::string nodeType = node["kind"].asString();

        if (nodeType == "unit") {
                return parseUnit(node);
        }
        else if (nodeType == "block") {
                return parseBlock(node);
        }
        else if (nodeType == "vardef") {
                return parseVardef(node);
        }
        else if (nodeType == "int") {
                return parseLiteral(node);
        }
        else if (nodeType == "string") {
                return parseLiteral(node);
        }
        else if (nodeType == "float") {
                return parseLiteral(node);
        }
        else if (nodeType == "bool") {
                return parseLiteral(node);
        }
        else if (nodeType == "null") {
                return parseLiteral(node);
        }
        else if (nodeType == "array") {
                return parseArray(node);
        }
        else if (nodeType == "closure") {
                return parseClosure(node);
        }
        else if (nodeType == "var") {
                return parseVar(node);
        }
        else if (nodeType == "mcall") {
                return parseMethodCall(node);
        }
        else if (nodeType == "object") {
                return parseObject(node);
        }
        else if (nodeType == "if") {
                return parseIf(node);
        }
        else if (nodeType == "return") {
                return new AST::Return(parse(node["value"]));
        }
        else if (nodeType == "assign") {
                return parseAssignment(node);
        }
        else if (nodeType == "nop") {
                return new AST::Literal(AST::LiteralNull);
        }
        else if (nodeType == "while") {
                return parseWhile(node);
        }
        else if (nodeType == "try") {
                return parseTry(node);
        }
        else if (nodeType == "throw") {
                return new AST::Throw(parse(node["value"]));
        }
        else if (nodeType == "spawn") {
                return new AST::Spawn(parseClosure(node["value"]));
        }
        else if (nodeType == "send") {
                std::auto_ptr<AST::Send> newSend(new AST::Send);
                newSend->setTarget(parse(node["target"]));
                newSend->setValue(parse(node["value"]));

                return newSend.release();
        }

        throw std::runtime_error("invalid node type: '" + nodeType + "'");
}

AST::Unit * AST::Parser::parseUnit(const Json::Value & node) {
        assert(node["kind"] == "unit");

        const Json::Value & members = node["members"];
        Json::Value::const_iterator iter = members.begin();

        std::auto_ptr<AST::Unit> unit(new AST::Unit);

        for (; iter != members.end(); ++iter) {
                AST::Vardef * vardef = parseVardef(*iter);
                // vardef->setParent(unit.get());

                unit->addMember(vardef);
        }

        return unit.release();
}

AST::Block * AST::Parser::parseBlock(const Json::Value & node) {
        assert(node["kind"] == "block");

        const Json::Value & members = node["members"];
        Json::Value::const_iterator iter = members.begin();

        std::auto_ptr<AST::Block> block(new AST::Block);

        for (; iter != members.end(); ++iter) {
                AST::Expression * expr = parse(*iter);
                AST::Vardef * vardef = dynamic_cast<AST::Vardef *>(expr);
                // ugly
                if (vardef)
                        vardef->setParent(block.get());

                block->addMember(expr);
        }

        return block.release();
}

AST::Vardef * AST::Parser::parseVardef(const Json::Value & node) {
        assert(node["kind"] == "vardef");

        const bool isVal = node["isval"].asBool();
        const std::string name = node["name"].asString();
        const Json::Value & initBlock = node["init"];

        if (initBlock.empty()) {
                std::auto_ptr<AST::Vardef> vardef(new AST::Vardef(name, isVal));
                vardef->setInit(new AST::Literal(AST::LiteralNull));
                return vardef.release();
        }
        else {
                std::auto_ptr<AST::Vardef> vardef(new AST::Vardef(name, isVal));
                vardef->setInit(parse(initBlock));
                return vardef.release();
        }
}

AST::Literal * AST::Parser::parseLiteral(const Json::Value & node) {
        AST::LiteralType type = parseLiteralType(node["kind"].asString());
        std::auto_ptr<AST::Literal> literal(new AST::Literal(type));

        switch (type) {
                case AST::LiteralInt:
                        literal->setInt(node["value"].asInt());
                        break;

                case AST::LiteralString:
                        literal->setString(node["value"].asString());
                        break;

                case AST::LiteralNull:
                        break;

                case AST::LiteralFloat:
                        literal->setFloat(node["value"].asDouble());
                        break;

                case AST::LiteralBool:
                        literal->setBool(node["value"].asBool());
                        break;
        }

        return literal.release();
}

AST::Closure * AST::Parser::parseClosure(const Json::Value & node) {
        assert(node["kind"] == "closure");

        const Json::Value & formals = node["formals"];
        const Json::Value & body = node["body"];
        std::auto_ptr<AST::Closure> closure(new AST::Closure);

        // parse prototype
        Json::Value::const_iterator iter = formals.begin();
        for (; iter != formals.end(); ++iter) {
                AST::Vardef * formal = parseVardef(*iter);
                formal->setFormal(true);
                formal->setParent(closure.get());
                closure->addParameter(formal);
        }

        closure->setBody(parse(body));

        return closure.release();
}

AST::Var * AST::Parser::parseVar(const Json::Value & node) {
        const std::string name = node["name"].asString();

        return new AST::Var(name);
}

AST::MethodCall * AST::Parser::parseMethodCall(const Json::Value & node) {
        assert(node["kind"] == "mcall");

        const std::string name = node["name"].asString();
        const Json::Value & args = node["args"];
        const Json::Value & target = node["target"];

        std::auto_ptr<AST::MethodCall> mcall(new AST::MethodCall(name));
        mcall->setTarget(parse(target));

        Json::Value::const_iterator iter = args.begin();
        for (; iter != args.end(); ++iter) {
                mcall->addArgument(parse(*iter));
        }

        return mcall.release();
}

AST::Object * AST::Parser::parseObject(const Json::Value & node) {
        assert(node["kind"] == "object");

        const Json::Value & body = node["body"];
        std::auto_ptr<AST::Object> object(new AST::Object);

        Json::Value::const_iterator iter = body.begin();
        for (; iter != body.end(); ++iter) {
                AST::Vardef * vardef = parseVardef(*iter);
                vardef->setSlot(true);
                // vardef->setParent(object.get());
                object->addMember(vardef);
        }

        return object.release();
}

AST::If * AST::Parser::parseIf(const Json::Value & node) {
        assert(node["kind"] == "if");

        const Json::Value & cond = node["cond"];
        const Json::Value & thenDo = node["then"];
        const Json::Value & elseDo = node["else"];

        std::auto_ptr<AST::If> ifexpr(new AST::If);

        ifexpr->setCondition(parse(cond));
        ifexpr->setThen(parse(thenDo));
        ifexpr->setElse(parse(elseDo));

        return ifexpr.release();
}

AST::Assignment * AST::Parser::parseAssignment(const Json::Value & node) {
        assert(node["kind"] == "assign");

        const Json::Value & value = node["value"];
        const Json::Value & target = node["target"];
        const std::string name = node["name"].asString();

        std::auto_ptr<AST::Assignment> assign(new AST::Assignment(name));

        AST::Expression * targetExpr = 0;
        if (!target.empty())
                targetExpr = parse(target);

        assign->setExpr(targetExpr, parse(value));

        return assign.release();
}

AST::While * AST::Parser::parseWhile(const Json::Value & node) {
        assert(node["kind"] == "while");

        const Json::Value & cond = node["cond"];
        const Json::Value & body = node["body"];

        std::auto_ptr<AST::While> newWhile(new AST::While);

        newWhile->setCondition(parse(cond));
        newWhile->setBody(parse(body));

        return newWhile.release();
}

AST::Try * AST::Parser::parseTry(const Json::Value & node) {
        assert(node["kind"] == "try");

        const Json::Value & value = node["value"];
        const Json::Value & elseBlock = node["else"];
        const Json::Value & formals = node["formals"];

        std::auto_ptr<AST::Try> newTry(new AST::Try);
        std::auto_ptr<AST::Vardef> catchVar(parseVardef(formals[0u]));

        catchVar->setParent(newTry.get()),

        newTry->setFormal(catchVar.release());
        newTry->setBody(parse(value));
        newTry->setElse(parse(elseBlock));

        return newTry.release();;
}

AST::LiteralType AST::Parser::parseLiteralType(const std::string & typestr) {
        if (typestr == "int")
                return AST::LiteralInt;
        else if (typestr == "string")
                return AST::LiteralString;
        else if (typestr == "null")
                return AST::LiteralNull;
        else if (typestr == "float")
                return AST::LiteralFloat;
        else if (typestr == "bool")
                return AST::LiteralBool;

        throw std::runtime_error("invalid literal type: '" + typestr + "'");
}

AST::Array * AST::Parser::parseArray(const Json::Value & node) {
        assert(node["kind"] == "array");

        std::auto_ptr<AST::Array> newArray(new AST::Array);

        const Json::Value & members = node["members"];
        Json::Value::const_iterator iter = members.begin();

        for (; iter != members.end(); ++iter) {
                AST::Expression * member = parse(*iter);
                newArray->addMember(member);
        }

        return newArray.release();
}
