/*
 * $Id: str_util.h 1250 2010-04-27 12:23:35Z ptr $
 * thorn-llvm
 * 
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef STR_UTIL_H_SJAO7JD4
#define STR_UTIL_H_SJAO7JD4

#include <string>

std::string ucase(const std::string & s);
std::string lcase(const std::string & s);
void string_replace(std::string & src, const std::string & s1,const std::string & s2);
void string_commentize(std::string & src);

#endif /* end of include guard: STR_UTIL_H_SJAO7JD4 */
