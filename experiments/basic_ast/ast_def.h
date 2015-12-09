#ifndef AST_DEF_H_E4RH4R4X
#define AST_DEF_H_E4RH4R4X

#include "ast_expression.h"
#include "ast_primitives.h"
#include <string>
#include <vector>

namespace llvm {
	class Type;
}

namespace AST {
	class Def : public Expression {
	public:
		Def(AST::Primitive returnType, const std::string & name);
		
		llvm::Value * generateCode(Namespace & ns, llvm::Module * module, llvm::BasicBlock * block) const;
		
		void addParameter(AST::Primitive type, const std::string & name);
		void setBody(AST::Expression * body);
		
	private:
		std::vector<const llvm::Type *> createParameterTypes() const;
		
		typedef std::pair<AST::Primitive, std::string> Parameter;
		
		std::string name;	
		std::vector<Parameter> parameters;
		AST::Primitive returnType;
		AST::Expression * _body;
	};
}

#endif /* end of include guard: AST_DEF_H_E4RH4R4X */
