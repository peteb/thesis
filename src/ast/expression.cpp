/*
 * $Id: expression.cpp 1090 2010-04-18 21:48:28Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include "expression.h"

bool AST::Expression::isConstant() const {
	return false;
}