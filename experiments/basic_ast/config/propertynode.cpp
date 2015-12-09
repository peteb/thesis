/*
 *  propertynode.cpp
 *  config
 *
 *  Created by Peter Backman on 2/3/09.
 *  Copyright 2009 Peter Backman. All rights reserved.
 *
 */

#include "propertynode.h"
#include <stdexcept>

PropertyNode::PropertyNode(const std::string & name) 
	: name(name)
{
	children.reserve(5);
}


void PropertyNode::addAttribute(const std::string & attribute) {
	attributes.push_back(attribute);
}

void PropertyNode::addProperty(const Property & property) {
	properties[property.first] = property.second;
}

void PropertyNode::addNode(const PropertyNode & node) {
	children.push_back(node);
}


int PropertyNode::getNumProperties() const {
	return properties.size();
}

int PropertyNode::getNumAttributes() const {
	return attributes.size();
}

int PropertyNode::getNumNodes() const {
	return children.size();
}


std::string PropertyNode::getName() const {
	return name;
}

std::string PropertyNode::getAttribute(int id) const {
	return attributes.at(id);
}

std::string & PropertyNode::getAttribute(int id) {
	return attributes.at(id);
}

std::string PropertyNode::getProperty(const std::string & name, const std::string & defaultValue) const {
	PropertyMap::const_iterator iter = properties.find(name);
	if (iter == properties.end())
		return defaultValue;
	
	return iter->second;
}

std::string PropertyNode::getProperty(const std::string & name) const {
	PropertyMap::const_iterator iter = properties.find(name);
	if (iter == properties.end())
		throw std::out_of_range("property '" + name + "' is not defined");
	
	return iter->second;	
}

Property PropertyNode::getProperty(int id) const {
	PropertyMap::const_iterator iter = properties.begin();
	
	for (int i = 0; /*i < id,*/ iter != properties.end(); ++i, ++iter) {
		if (i == id)
			return *iter;
	}
		
	throw std::out_of_range("property id out of range");
}

const PropertyNode & PropertyNode::getNode(int id) const {
	return children.at(id);
}

PropertyNode & PropertyNode::getNode(int id) {
	return children.at(id);
}

const PropertyNode & PropertyNode::getNode(const std::string & name) const {
	for (unsigned i = 0; i < children.size(); ++i) {
		if (children[i].getName() == name)
			return children[i];
	}
	
	throw std::out_of_range("node '" + name + "' not defined");
}

PropertyNode & PropertyNode::getNode(const std::string & name) {
	for (unsigned i = 0; i < children.size(); ++i) {
		if (children[i].getName() == name)
			return children[i];
	}
	
	throw std::out_of_range("node '" + name + "' not defined");
}
