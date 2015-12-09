/*
 * $Id$
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef ASTPRINTER_H_LRV1TFU3
#define ASTPRINTER_H_LRV1TFU3

#include "ast/expression.h"
#include <ostream>

namespace AST {
	class Printer : public AST::Visitor {
	public:
		Printer(std::ostream & os) : _os(os) {}
		
		void visit(AST::Expression * node) {
			_os << typeid(node).name() << "\n";
		}
		
	private:
		std::ostream & _os;
	};
}

#endif /* end of include guard: ASTPRINTER_H_LRV1TFU3 */
