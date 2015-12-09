/*
 * $Id: visit_node.h 1339 2010-05-05 13:28:36Z ptr $
 * thorn-llvm
 * 
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef AST_VISIT_NODE_H_NU79KUBX
#define AST_VISIT_NODE_H_NU79KUBX

#include "ast/closure.h"
#include "ast/visitor.h"
#include <iostream>

namespace AST {
	template<typename T>
	class NodeVisitor : public AST::DelegateVisitor {
	public:
		NodeVisitor(AST::Visitor & delegate) : AST::DelegateVisitor(delegate) {}
		
		void visit(T & node) {
			AST::Visitor::visit(node);
		}
	};
	
	template<typename T>
	void VisitNode(T & node, AST::Visitor & visitor) {
		NodeVisitor<T> visit(visitor);
		node.accept(visit);
	}
}


#endif /* end of include guard: AST_VISIT_NODE_H_NU79KUBX */
