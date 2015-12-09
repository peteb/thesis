#include <iostream>

#include "llvm/Module.h"
#include "llvm/Function.h"
#include "llvm/PassManager.h"
#include "llvm/CallingConv.h"
#include "llvm/Analysis/Verifier.h"
#include "llvm/Assembly/PrintModulePass.h"
#include "llvm/Bitcode/ReaderWriter.h"
#include "llvm/Support/IRBuilder.h"
#include "llvm/Support/raw_ostream.h"
#include <vector>
#include "ast.h"

using namespace llvm;

Module* makeLLVMModule();

/*
 int main(int ett, int tva) {
 
 
 }
 
 {
	"FUNC" {
		"main" 
		
		"PARAMS" {
			"ett" {"int"}
			"tva" {"int"}
		}
 
	}
 
 }
 
 
*/

//class Node {
//public:
//	Node(const std::string & name) : _name(name) {}
//	static Node CreatePair(const std::string & name, const std::string & v1) {
//		Node ret(name);
//		ret.add(Node(v1));
//		return ret;
//	}
//	
//	std::string name() const {return _name;}
//	int size() const {return children.size(); }
//	Node & operator [](int idx) {return children[idx]; }
//	const Node & operator [](int idx) const {return children[idx]; }
//
//	Node & at(int idx) {return children.at(idx); }
//	const Node & at(int idx) const {return children.at(idx); }
//
//	void add(const Node & node) {children.push_back(node); }
//	
//private:
//	std::vector<Node> children;
//	std::string _name;
//};




Node<void> * createSyntaxTree() {
//	Node root("testmod");
//	
//	Node main("FUNC");
//	main.add(Node("main"));
//	
//	{
//		Node parameters("PARAMS");
//		parameters.add(Node::CreatePair("ett", "int"));
//		parameters.add(Node::CreatePair("tva", "int"));
//		main.add(parameters);
//	}
//	
//	root.add(main);
//	
//	return root;
	
	return NULL;
}

Module * createModule(const std::string & name/*, const Node<void> * tree*/);

int main() {
	Node<void> * tree = createSyntaxTree();
	Module * module = createModule("testmod"/*, tree*/);
	assert(module);
	
	verifyModule(*module, PrintMessageAction);
	PassManager passes;
	passes.add(createPrintModulePass(&outs()));
	passes.run(*module);
	
	delete module;
}

Module * createModule(const std::string & name/*, const Node<void> * tree*/) {
	Module * mod = new Module(name, getGlobalContext());
	
	FunctionDef * mainFunc = new FunctionDef("main", new IntType("bargh"));
	//mainFunc->addParameter(new IntType("argc"));
	//mainFunc->addParameter(new IntType("argv"));

	Call * aCall = new Call("main", "");
	
	BasicBlock * globalBlock = BasicBlock::Create(getGlobalContext());
	IRBuilder<> builder(globalBlock);
	
	mainFunc->generateCode(mod, builder);
	aCall->generateCode(mod, builder);
	
	builder.CreateRetVoid();
	
	
	/****************************************************************************
	// Ett BasicBlock är bara en Value... ha som superklass kanske
	// Value verkar vara superklass för det mesta, även "ret"
	//**************************************************************************/
	
	
	//tree->generateCode(mod, BasicBlock::Create(getGlobalContext()));
	
	return mod;
}

//void iterateNode(const Node & node, Module * mod);
//void createFunction(const Node & node, Module * mod);
//
//Module * createModule(const Node & tree) {
//	Module * mod = new Module(tree.name(), getGlobalContext());
//	iterateNode(tree, mod);
//	
//	return mod;
//}
//
//void iterateNode(const Node & node, Module * mod) {
//	for (int i = 0; i < node.size(); ++i) {
//		const Node & child = node[i];
//		const std::string & childName = child.name();
//		
//		std::cout << childName << std::endl;
//		
//		if (childName == "FUNC") {
//			createFunction(child, mod);
//		}
//	}
//}
//
//std::vector<const Type *> createParameters(const Node & node) {
//	std::vector<const Type *> params;
//	
//	for (int i = 0; i < node.size(); ++i) {
//		const std::string & type = node.at(0).name();
//		const Type * typ = IntegerType::get(getGlobalContext(),32);
//		params.push_back(typ);
//	}
//	
//	return params;
//}
//
//void nameParameters(Function::arg_iterator begin, Function::arg_iterator end, const Node & node) {
//	int idx = 0;
//	for (Function::arg_iterator iter = begin; iter != end; ++iter) {
//		iter->setName(node.at(idx).name());
//		idx++;
//	}
//}
//
//void createFunction(const Node & node, Module * mod) {
//	std::string name = node.at(0).name();	
//	assert(node.at(1).name() == "PARAMS");
//
//	std::vector<const Type *> parameters = createParameters(node.at(1));
//	
//	FunctionType * ft = FunctionType::get(Type::getVoidTy(getGlobalContext()), parameters, false);
//	Function * func = Function::Create(ft, Function::ExternalLinkage, name, mod);
//	
//	nameParameters(func->arg_begin(), func->arg_end(), node.at(1));
//	
//	
//	BasicBlock * block = BasicBlock::Create(getGlobalContext(), "entry", func);
//	IRBuilder<> builder(block);
//
//	//Value * ret = Constant::getIntegerValue(IntegerType::get(getGlobalContext(), 32), APInt(32, 3));
//	
//	builder.CreateRetVoid();
//	
//}