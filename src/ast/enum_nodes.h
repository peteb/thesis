/*
 * $Id: enum_nodes.h 1339 2010-05-05 13:28:36Z ptr $
 * thorn-llvm
 * 
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef ENUM_NODES_H_UFF9MT3C
#define ENUM_NODES_H_UFF9MT3C

#include "ast/closure.h"
#include "ast/visitor.h"

#include <vector>

namespace AST {

	const unsigned ClosureNode =	0x0001;
	const unsigned SpawnNode = 	0x0002;
	
	template<typename T>
	class NodeEnumerator : public AST::Visitor {
	public:
		NodeEnumerator(unsigned dontNest) : _dontNest(dontNest) {}
		
		std::vector<T *> result;
		
		void visit(T & node) {
			result.push_back(&node);
			AST::Visitor::visit(node);
		}
		
		void visit(AST::Spawn & spawn) {
			if (!(_dontNest & SpawnNode))
				AST::Visitor::visit(spawn);
		}
		
		void visit(AST::Closure & closure) {
			if (!(_dontNest & ClosureNode))
				AST::Visitor::visit(closure);
		}
		
	private:
		const unsigned _dontNest;
	};

	template<>
	class NodeEnumerator<AST::Closure> : public AST::Visitor {
	public:
		NodeEnumerator(unsigned dontNest) : _dontNest(dontNest) {}
		
		std::vector<AST::Closure *> result;
		
		void visit(AST::Spawn & spawn) {
			if (!(_dontNest & SpawnNode))
				AST::Visitor::visit(spawn);
		}
		
		void visit(AST::Closure & closure) {
			result.push_back(&closure);
			
			if (!(_dontNest & ClosureNode))
				AST::Visitor::visit(closure);
		}
		
	private:
		const unsigned _dontNest;
	};

	template<>
	class NodeEnumerator<AST::Spawn> : public AST::Visitor {
	public:
		NodeEnumerator(unsigned dontNest) : _dontNest(dontNest) {}
		
		std::vector<AST::Spawn *> result;
		
		void visit(AST::Spawn & spawn) {
			result.push_back(&spawn);

			if (!(_dontNest & SpawnNode))
				AST::Visitor::visit(spawn);
		}
		
		void visit(AST::Closure & closure) {
			if (!(_dontNest & ClosureNode))
				AST::Visitor::visit(closure);
		}
		
	private:
		const unsigned _dontNest;
	};
	
	

	template<typename T>
	std::vector<T *> EnumNodes(AST::Expression & node, unsigned _ignore = 0) {
		NodeEnumerator<T> enumerator(_ignore);
		node.accept(enumerator);
		
		return enumerator.result;
	}

}

#endif /* end of include guard: ENUM_NODES_H_UFF9MT3C */
