#ifndef AST_PARSER_H_TM4K8WNN
#define AST_PARSER_H_TM4K8WNN

#include <map>
#include <string>

class PropertyNode;

namespace AST {
	class Block;
	class Expression;
	class Def;
	class Val;
	class CompileFunction;
	
	class Parser {
	public:
		Parser();
		Expression * parse(const PropertyNode & tree);	
				
	private:
		typedef std::map<std::string, CompileFunction *> CFuncMap;
		CFuncMap _functions;
	};
	
	
}

#endif /* end of include guard: AST_PARSER_H_TM4K8WNN */
