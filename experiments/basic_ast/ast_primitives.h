#ifndef AST_PRIMITIVES_H_6M65N2J9
#define AST_PRIMITIVES_H_6M65N2J9

#include <string>
#include <stdexcept>

namespace llvm {
	class Type;
}

namespace AST {
	enum Primitive {
		Void = 0,
		Int
	};
	
	Primitive ParsePrimitive(const std::string & text);
	const llvm::Type * TypeFromPrimitive(Primitive primitive);
}

#endif /* end of include guard: AST_PRIMITIVES_H_6M65N2J9 */
