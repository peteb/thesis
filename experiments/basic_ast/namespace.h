#ifndef NAMESPACE_H_HDZDKW35
#define NAMESPACE_H_HDZDKW35

#include <map>

namespace AST {
	class CompileFunction;
}

class Namespace {
public:
	Namespace();
	Namespace(const Namespace & parent);
	
	AST::CompileFunction * generatorForKey(const std::string & key) const;
	void insertGenerator(const std::string & name, AST::CompileFunction * generator);
	
private:
	typedef std::map<std::string, AST::CompileFunction *> GeneratorMap;
	GeneratorMap _namedGenerators;

	const Namespace * _chain;
};

#endif /* end of include guard: NAMESPACE_H_HDZDKW35 */
