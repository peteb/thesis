/*
 * $Id: socket.c 1522 2010-05-18 09:56:41Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include <libthorn/libthorn.h>
#include <errno.h>
#include <pthread.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <netdb.h>
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>

#include "socket.h"
#include "address.h"
#include "err.h"

GLOBAL_SYM(class);
GLOBAL_SYM(puts);
GLOBAL_SYM(gets);
GLOBAL_SYM(connect);
GLOBAL_SYM(listen);
GLOBAL_SYM(accept);
GLOBAL_SYM(peer_address);
GLOBAL_SYM(close);
GLOBAL_SYM(read);
GLOBAL_SYM(write);

static METHOD(socket, class);
static METHOD(socket, puts);
static METHOD(socket, gets);
static METHOD(socket, connect);
static METHOD(socket, listen);
static METHOD(socket, accept);
static METHOD(socket, peer_address);
static METHOD(socket, close);
static METHOD(socket, read);
static METHOD(socket, write);

static object_t socket_prototype();
static void socket_finalizer(object_t obj, void * cd);

static pthread_mutex_t socket_prototype_m = PTHREAD_MUTEX_INITIALIZER;

// -- prototype ----------------------------------------------------------------------
object_t socket_prototype() {
	static object_t prototype = 0;
	
	BEGIN_MUTEX_CACHE(prototype, socket_prototype_m);
		prototype = object_alloc(10, OBJ_EMPTY);
		object_set_delegate(prototype, object_prototype());
		
		REG_METHOD(prototype, socket, connect);
		REG_METHOD(prototype, socket, puts);
		REG_METHOD(prototype, socket, gets);
		REG_METHOD(prototype, socket, class);
		REG_METHOD(prototype, socket, listen);
		REG_METHOD(prototype, socket, accept);
		REG_METHOD(prototype, socket, peer_address);
		REG_METHOD(prototype, socket, close);
		REG_METHOD(prototype, socket, read);
		REG_METHOD(prototype, socket, write);
		object_freeze(prototype);
	END_MUTEX_CACHE(prototype, socket_prototype_m);	
	
	return prototype;
}

// -- constructors -------------------------------------------------------------------
ret_t socket_object(object_t args) {
	object_t family_obj = ARG(0);
	object_t socktype_obj = ARG(1);
	object_t protocol_obj = ARG(2);
	
	assert(OBJ_VALID(family_obj));
	assert(OBJ_VALID(socktype_obj));
	assert(OBJ_VALID(protocol_obj));
	
	int domain = int_value(family_obj);
	int socktype = int_value(socktype_obj);
	int protocol = int_value(protocol_obj);
	
	int socket_handle = socket(domain, socktype, protocol);	
	if (socket_handle == -1) {
		char buf[256];
		THROW(string_object(prestrerr("failed to create socket: ", errno, buf, 256)));
	}
	
	// int set = 1;
	// TODO: portable way to disable SIGPIPE for sockets
	// setsockopt(socket_handle, SOL_SOCKET, SO_NOSIGPIPE, (void *)&set, sizeof(int));
	
	object_t socket_obj = object_alloc(0, OBJ_EMPTY|OBJ_METADATA);
	object_set_metadata(socket_obj, (void *)socket_handle);
	object_set_delegate(socket_obj, socket_prototype());
	// mem_set_finalizer(socket_obj, socket_obj, (void *)socket_handle);
	
	RET(socket_obj);
}

// -- finalizer ----------------------------------------------------------------------
void socket_finalizer(object_t obj, void * cd) {
	printf("FINALIZING\n");
	
	close((int)cd);
}

// -- methods ------------------------------------------------------------------------
METHOD(socket, class) {
	RET(string_object("NET.socket"));
}

METHOD(socket, puts) {
	const char * msg_str = string_cstrC(ARG(0));
	int socket_handle = (int)object_get_metadata(self);

	char * buffer = MEM_ALLOC(strlen(msg_str) + 3, ALLOC_BLOB);
	strcpy(buffer, msg_str);
	strcat(buffer, "\r\n");
	
	int bytes_sent = send(socket_handle, buffer, strlen(buffer), 0);
	if (bytes_sent == -1) {
		char buf[256];
		THROW(string_object(prestrerr("failed to send: ", errno, buf, 256)));
	}
	
	RET(self);
}

METHOD(socket, gets) {
	// TODO: only return complete lines, cache the rest
	int socket_handle = (int)object_get_metadata(self);

	char buffer[1024] = {0};
	int bytes_recv = recv(socket_handle, buffer, 1024, 0);
	
	if (bytes_recv == 0) {
		THROW(string_object("Connection closed!"));
	}
	
	if (bytes_recv == -1) {
		char buf[256];
		THROW(string_object(prestrerr("failed to receive: ", errno, buf, 256)));
	}
	
	if (bytes_recv < 1024)
		buffer[bytes_recv] = '\0';
		
	RET(string_object(buffer));
}

METHOD(socket, connect) {
	object_t address_object = ARG(0);	
	struct sockaddr * res = object_get_metadata(address_object);
	
	int socket_handle = (int)object_get_metadata(self);
	int ret = connect(socket_handle, res, sizeof(struct sockaddr));
	if (ret != 0) {
		char buf[256];
		THROW(string_object(prestrerr("failed to connect: ", errno, buf, 256)));
	}
	
	RET(self);
}

// TODO: free peer_address.meta on delete
METHOD(socket, peer_address) {
	int socketfd = (int)object_get_metadata(self);

	struct sockaddr res;
	socklen_t len = sizeof(res);
	int ret = getpeername(socketfd, &res, &len);
	if (ret != 0) {
		char buf[256];
		THROW(string_object(prestrerr("failed to get peer name: ", errno, buf, 256)));
	}
	
	struct sockaddr * data = MEM_ALLOC(sizeof(struct sockaddr), ALLOC_BLOB);
	memcpy(data, &res, sizeof(struct sockaddr));
	
	return address_from_sockaddr(data);
}

METHOD(socket, listen) {
	object_t address_object = ARG(0);	
	struct sockaddr * addr = object_get_metadata(address_object);
	
	
	int socket_handle = (int)object_get_metadata(self);
	int yes = 1;
	setsockopt(socket_handle, SOL_SOCKET, SO_REUSEADDR, &yes, sizeof(int));

	int ret = bind(socket_handle, addr, sizeof(struct sockaddr));
	if (ret != 0) {
		char buf[256];
		THROW(string_object(prestrerr("failed to bind: ", errno, buf, 256)));
	}
	
	ret = listen(socket_handle, 10);
	if (ret == -1) {
		char buf[256];
		THROW(string_object(prestrerr("failed to listen: ", errno, buf, 256)));
	}
	
	RET(self);
}

METHOD(socket, accept) {
	struct sockaddr_storage their_addr;
	socklen_t addr_size = sizeof(their_addr);
	int socket_handle = (int)object_get_metadata(self);
	int client = accept(socket_handle, (struct sockaddr *)&their_addr, &addr_size);
	
	if (client == -1) {
		char buf[256];
		THROW(string_object(prestrerr("failed to accept: ", errno, buf, 256)));

	}
	
	
	object_t socket_obj = object_alloc(0, OBJ_EMPTY|OBJ_METADATA);
	object_set_metadata(socket_obj, (void *)client);
	object_set_delegate(socket_obj, socket_prototype());
	
	RET(socket_obj);
}

METHOD(socket, close) {
	int socket_handle = (int)object_get_metadata(self);
	close(socket_handle);
	
	RET(self);
}

METHOD(socket, read) {
	size_t size = int_value(ARG(0));
	int socket_handle = (int)object_get_metadata(self);
	object_t ret = 0;
	
	if (array_get_sizeC(args) == 1) {		// param1 = size
		void * buffer = MEM_ALLOC(size, ALLOC_BLOB);
		int bytes_recv = recv(socket_handle, buffer, size, 0);
	
		if (bytes_recv == 0) {
			THROW(string_object("Connection closed!"));
		}
	
		if (bytes_recv == -1) {
			char buf[256];
			THROW(string_object(prestrerr("failed to receive: ", errno, buf, 256)));		
		}
		
		ret = data_object_nocopy(bytes_recv, buffer);
	}
	else if (array_get_sizeC(args) == 2) {	// param1 = size, param2 = previous buffer
		void * buffer = 0;
		
		if (ARG(1) == null_object()) {
			buffer = MEM_ALLOC(size, ALLOC_BLOB);
			ret = data_object_nocopy(size, buffer);
		}
		else {
			data_t * data = data_get_bytesC(ARG(1));
			assert(data);
			
			if (data->size >= size) {	// the data buffer is enough
				buffer = data->data;
				ret = ARG(1);
			}
			else {
				buffer = MEM_ALLOC(size, ALLOC_BLOB);
				ret = data_object_nocopy(size, buffer);
			}
		}
		
		int bytes_recv = recv(socket_handle, buffer, size, 0);
	
		if (bytes_recv == 0) {
			THROW(string_object("Connection closed!"));
		}
	
		if (bytes_recv == -1) {
			char buf[256];
			THROW(string_object(prestrerr("failed to receive: ", errno, buf, 256)));		
		}
		
		data_t * data = data_get_bytesC(ret);
		assert(data);
		
		data->size = bytes_recv;	
	}
	
	RET(ret);
}

METHOD(socket, write) {
	const data_t * data = data_get_bytesC(ARG(0));
	int socket_handle = (int)object_get_metadata(self);
	
	int bytes_sent = send(socket_handle, data->data, data->size, 0);
	if (bytes_sent == -1) {
		char buf[256];
		THROW(string_object(prestrerr("failed to send: ", errno, buf, 256)));
	}
	
	RET(int_object(bytes_sent));
}
