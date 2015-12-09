/*
 * $Id: lexscope.h 1287 2010-05-03 14:43:48Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef LEXSCOPE_H_P4YVMZEU
#define LEXSCOPE_H_P4YVMZEU

#include <map>
#include <string>
#include <vector>

#include "lexentry.h"

class LexScope {
public:
	LexScope();
	LexScope(LexScope & delegate);
	~LexScope();
	
	LexScopeEntry * getEntry(const std::string & key) const;
	void setEntry(const std::string & key, LexScopeEntry * entry);
	bool hasEntry(const std::string & key) const;
	void removeEntry(const std::string & key);
	int countEntries(const std::string & name, LexScopeFlags type = LexScopeAny) const;
	void replaceEntry(const std::string & key, LexScopeEntry * with);
	
	void addTag(const std::string & name);
	
	// LexScopeEntry & operator[](const std::string & key) const;
	std::string asString() const;
	
	void fillEntryNames(std::vector<std::string> & entries) const;
	
private:
	typedef std::map<std::string, LexScopeEntry *> ValueMap;
	
	ValueMap _values;
	LexScope * _delegate;
};

#endif /* end of include guard: LEXSCOPE_H_P4YVMZEU */
