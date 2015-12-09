#include "namespace.h"
#include <stdexcept>

Namespace::Namespace() {
	_chain = NULL;	
}

Namespace::Namespace(const Namespace & parent) {
	_chain = &parent;
}

AST::CompileFunction * Namespace::generatorForKey(const std::string & key) const {
	GeneratorMap::const_iterator iter = _namedGenerators.find(key);
	
	if (iter == _namedGenerators.end()) {
		if (_chain)
			return _chain->generatorForKey(key);
		else
			throw std::runtime_error("symbol " + key + " not defined");
	}
	
	return iter->second;
}

void Namespace::insertGenerator(const std::string & name, AST::CompileFunction * generator) {
	_namedGenerators[name] = generator;
}
