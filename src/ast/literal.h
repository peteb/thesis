/*
 * $Id: literal.h 1253 2010-04-27 14:01:49Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef LITERAL_H_DDLL4UEY
#define LITERAL_H_DDLL4UEY

#include <string>
#include "expression.h"

class Builder;

namespace llvm {
	class BasicBlock;
	class Function;
}

namespace AST {
	enum LiteralType {
		LiteralInt,
		LiteralFloat,
		LiteralBool,
		LiteralString,
		LiteralNull,
	};
	
	union LiteralValueAggregate {
		long i;
		bool b;
		float f;
		std::string * str;
	};
		
	class Literal : public Expression {
	public:
		Literal(LiteralType type);
		~Literal();
		
		llvm::Value * genCode(Builder & builder) const;				
		void accept(AST::Visitor & visitor);

		void setInt(long val);
		void setString(const std::string & str);
		void setBool(bool val);
		void setFloat(float val);
		bool isConstant() const;
		
		int getInt() const;
		const std::string & getString() const;
		bool getBool() const;
		float getFloat() const;
		
		LiteralType getType() const;
		
	private:
		llvm::Value * genInt(Builder & builder) const;
		llvm::Value * genString(Builder & builder) const;
		llvm::Value * genBool(Builder & builder) const;
		llvm::Value * genFloat(Builder & builder) const;
		llvm::Value * genNull(Builder & builder) const;
		
		const LiteralType _type;

		LiteralValueAggregate _value;
	};
	
}

#endif /* end of include guard: LITERAL_H_DDLL4UEY */
