/*
 *  propertymerger.h
 *  config
 *
 *  Created by Peter Backman on 6/11/09.
 *  Copyright 2009 Peter Backman. All rights reserved.
 *
 */

#ifndef CONFIG_PROPERTYMERGER_H
#define CONFIG_PROPERTYMERGER_H

// The name of the node is the only identification
class NodeNameEquals {
public:
	static PropertyNode & findNode(PropertyNode & in, const PropertyNode & like) {
		return in.getNode(like.getName());
	}
};

// A node is identified by the name and all of its attributes
class NodeNameAndAttributesEqual {
public:
	static PropertyNode & findNode(PropertyNode & in, const PropertyNode & like) {
		for (int i = 0; i < in.getNumNodes(); ++i) {
			PropertyNode & fromNode = in.getNode(i);
		
			if (sameAttributeList(fromNode, like))
				return fromNode;
		}
		
		throw std::out_of_range("node could not be found");
	}
	
private:
	static bool sameAttributeList(const PropertyNode & node1, const PropertyNode & node2) {
		if (node1.getNumAttributes() != node2.getNumAttributes())
			return false;
		
		for (int i = 0; i < node2.getNumAttributes(); ++i) {
			if (node1.getAttribute(i) != node2.getAttribute(i))
				return false;
		}
		
		return true;
	}
};


template<typename NodeIdentifier = NodeNameEquals>
class PropertyTreeMerger {
public:
	PropertyNode merge(const PropertyNode & base, const PropertyNode & sub) {
		// merge two trees into one. in case of a name overlap, sub has precedence. a -name- is a node name or a property name
		//    being able to include the attribute list in -name- would be useful!
		
		PropertyNode ret = base;
		
		for (int i = 0; i < sub.getNumProperties(); ++i) {
			ret.addProperty(sub.getProperty(i));
		}
		
		for (int i = 0; i < sub.getNumAttributes(); ++i) {	// TODO: possibility to change this behavior
			if (i < ret.getNumAttributes())
				ret.getAttribute(i) = sub.getAttribute(i);
			else
				ret.addAttribute(sub.getAttribute(i));
		}
		
		for (int i = 0; i < sub.getNumNodes(); ++i) {
			const PropertyNode & subBranch = sub.getNode(i);
			
			try {
				PropertyNode & retBranch = NodeIdentifier::findNode(ret, subBranch);
				retBranch = merge(retBranch, subBranch);
			}
			catch (const std::out_of_range & e) {	// the node from "sub" does not exist in the base, so we just add it
				ret.addNode(subBranch);
			}
		}
		
		return ret;
	}
};

#endif // !CONFIG_PROPERTYMERGER_H
