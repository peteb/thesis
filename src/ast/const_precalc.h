/*
 * $Id: const_precalc.h 1080 2010-04-16 14:55:16Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef AST_TRANSFORM_CONST_PRECALC_H_J9W0YEOA
#define AST_TRANSFORM_CONST_PRECALC_H_J9W0YEOA

#include "ast/visitor.h"

namespace AST {
	
	class ConstPrecalc : public AST::Visitor {
	public:
		void visit(AST::Block & block);
	};
	
}

#endif /* end of include guard: AST_TRANSFORM_CONST_PRECALC_H_J9W0YEOA */
