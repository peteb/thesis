/*
 * $Id: net.c 929 2010-04-07 13:39:56Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include <libthorn/libthorn.h>
#include <string.h>
#include <assert.h>

#include "address.h"
#include "socket.h"

GLOBAL_SYM(socket);
GLOBAL_SYM(address);
GLOBAL_SYM(to_s);

static METHOD(net, socket);
static METHOD(net, address);

// -- init ---------------------------------------------------------------------------
void __net_init(object_t lib) {
	REG_METHOD(lib, net, socket);
	REG_METHOD(lib, net, address);
}

// -- methods ------------------------------------------------------------------------
METHOD(net, socket) {	
	return socket_object(args);
}

METHOD(net, address) {
	return address_object(args);
}


