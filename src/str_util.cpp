/*
 * $Id: str_util.cpp 1250 2010-04-27 12:23:35Z ptr $
 * thorn-llvm
 * 
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include "str_util.h"

std::string ucase(const std::string & s) {
	std::string ret = s;
	for (unsigned i = 0; i < s.size(); ++i)
		ret[i] = toupper(ret[i]);

	return ret;
}

std::string lcase(const std::string & s) {
	std::string ret = s;
	for (unsigned i = 0; i < s.size(); ++i)
		ret[i] = tolower(ret[i]);

	return ret;
}


void string_replace(std::string & src, const std::string & s1, const std::string & s2) {
	size_t j = 0;
	for (; (j = src.find(s1, j + 1)) != std::string::npos;) {
		src.replace(j, s1.length(), s2);
	}
}

void string_commentize(std::string & src) {
	src = "; " + src;
	string_replace(src, "\n", "\n; ");
}
