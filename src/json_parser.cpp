/*
 * $Id: json_parser.cpp 830 2010-03-28 21:47:33Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved.
 */

#include <fstream>
#include <iostream>
#include <cassert>
#include <stdexcept>

#include "json_parser.h"
#include "json/json.h"
#include "ast/parser.h"
#include "ast/unit.h"

static void read_stream(std::istream & stream, std::string & output) {
        std::string line;
        while (std::getline(stream, line)) output += line;
}

static void read_file(const std::string & filename, std::string & output) {
        std::ifstream stream(filename.c_str());
        assert(stream);

        read_stream(stream, output);
        stream.close();
}


AST::Unit * parse_file(const std::string & filename) {
        // read file
        std::string data;

        if (filename != "-")
                read_file(filename, data);
        else
                read_stream(std::cin, data);


        // parse json
        Json::Value root;
        Json::Reader reader;

        if (!reader.parse(data, root))
                throw std::runtime_error(reader.getFormatedErrorMessages());


        // create syntax tree in memory
        AST::Parser parser;

        AST::Unit * unit = dynamic_cast<AST::Unit *>(parser.parse(root));
        assert(unit && "first node not a unit");

        return unit;
}
