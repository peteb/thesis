/*
 * $Id: lexscope.cpp 1287 2010-05-03 14:43:48Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved.
 */

#include "lexscope.h"
#include "lexentry.h"
#include <stdexcept>
#include <cassert>

LexScope::LexScope() {
        _delegate = 0;
}

LexScope::LexScope(LexScope & delegate) {
        _delegate = &delegate;
}

LexScope::~LexScope() {
        ValueMap::iterator iter = _values.begin();
        for (; iter != _values.end(); ++iter) {
                delete iter->second;
        }
}

LexScopeEntry * LexScope::getEntry(const std::string & key) const {
        ValueMap::const_iterator iter = _values.find(key);
        if (iter == _values.end()) {
                if (_delegate)
                        return _delegate->getEntry(key);
                else
                        throw std::runtime_error("entry '" + key + "' not declared");
        }

        return iter->second;
}

void LexScope::setEntry(const std::string & key, LexScopeEntry * entry) {
        assert(!key.empty() && "empty key name");

        if (_values.find(key) != _values.end())
                throw std::runtime_error("entry '" + key + "' already defined at this level");

        _values.insert(std::make_pair(key, entry));
}

void LexScope::removeEntry(const std::string & key) {
        ValueMap::iterator iter = _values.find(key);
        if (iter != _values.end())
                _values.erase(iter);
}

void LexScope::replaceEntry(const std::string & key, LexScopeEntry * with) {
        ValueMap::iterator iter = _values.find(key);
        if (iter != _values.end()) {
                _values.erase(iter);
                _values.insert(std::make_pair(key, with));
        }
        else {
                if (_delegate)
                        _delegate->replaceEntry(key, with);
        }
}

void LexScope::addTag(const std::string & name) {
        LexScopeEntry * entry = new LexScopeEntry(0, LexScopeTag, name);
        setEntry(name, entry);
}

int LexScope::countEntries(const std::string & name, LexScopeFlags type) const {
        int count = 0;
        ValueMap::const_iterator iter = _values.find(name);

        if (iter != _values.end()) {
                LexScopeEntry * entry = iter->second;
                if (type == LexScopeAny || (LexScopeFlags)(entry->getFlags() & 0xFF) == type)
                        count++;
        }

        if (_delegate)
                return _delegate->countEntries(name, type) + count;

        return count;
}

bool LexScope::hasEntry(const std::string & key) const {
        if (_values.find(key) != _values.end())
                return true;

        if (_delegate)
                return _delegate->hasEntry(key);

        return false;
}

std::string LexScope::asString() const {
        std::string ret;

        ValueMap::const_iterator iter = _values.begin();
        for (; iter != _values.end(); ++iter) {
                ret += iter->second->asString() + ": " + iter->first + "\n";
        }

        if (_delegate) {
                if (_values.empty())
                        ret += "<empty>\n";

                ret += "-- parent --------------------------------------------------\n";
                ret += _delegate->asString() + "\n";
        }

        return ret.substr(0, ret.size() - 1);
}

void LexScope::fillEntryNames(std::vector<std::string> & entries) const {
        if (_delegate)
                _delegate->fillEntryNames(entries);

        ValueMap::const_iterator iter = _values.begin();
        for (; iter != _values.end(); ++iter) {
                entries.push_back(iter->first);
        }
}

// LexScopeEntry * LexScope::operator[](const std::string & key) const {
//      return getEntry(key);
// }
