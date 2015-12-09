/*
 * $Id: json_parser.h 830 2010-03-28 21:47:33Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef JSON_PARSER_H_YK1R9294
#define JSON_PARSER_H_YK1R9294

#include <string>

namespace AST {class Unit; }

AST::Unit * parse_file(const std::string & filename);

#endif /* end of include guard: JSON_PARSER_H_YK1R9294 */
