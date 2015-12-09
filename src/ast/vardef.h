/*
 * $Id: vardef.h 1287 2010-05-03 14:43:48Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef VARDEF_H_6O2MNMR2
#define VARDEF_H_6O2MNMR2

#include "expression.h"

namespace AST {
	class Vardef : public Expression {
	public:
		Vardef(const std::string & name, bool isVal);
		~Vardef();
		
		llvm::Value * genCode(Builder & block) const;	
		void accept(AST::Visitor & visitor);
		
		void setFormal(bool formal);
		void setInit(AST::Expression * init);
		void setStoreFlags(unsigned int flags);
		void setSlot(bool slot);
		void setParent(AST::Expression * parent);
		
		bool isVal() const;
		const std::string & getName() const;
		AST::Expression * getInit() const;
		AST::Expression * getParent() const;
		bool isConstant() const;
		
	private:
		const std::string _name;
		AST::Expression * _init, * _parent;
		const bool _isVal;
		bool _isFormal;
		bool _isSlot;
		unsigned int _storeFlags;
	};
	
}

#endif /* end of include guard: VARDEF_H_6O2MNMR2 */
