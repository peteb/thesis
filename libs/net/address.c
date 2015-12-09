/*
 * $Id: address.c 1522 2010-05-18 09:56:41Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include <libthorn/libthorn.h>
#include <pthread.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <netdb.h>
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>

#include "address.h"

GLOBAL_SYM(to_s);
GLOBAL_SYM(class);

static METHOD(address, to_s);
static METHOD(address, class);
static ret_t address_object_ss(const char * url, const char * port);

static pthread_mutex_t address_prototype_m = PTHREAD_MUTEX_INITIALIZER;

// -- prototype ----------------------------------------------------------------------
object_t address_prototype() {
	static object_t prototype = 0;
	
	BEGIN_MUTEX_CACHE(prototype, address_prototype_m);
		prototype = object_alloc(2, OBJ_EMPTY);
		object_set_delegate(prototype, object_prototype());
		
		REG_METHOD(prototype, address, to_s);
		REG_METHOD(prototype, address, class);
		object_freeze(prototype);
		
	END_MUTEX_CACHE(prototype, address_prototype_m);
	
	return prototype;	
}

// -- constructors -------------------------------------------------------------------
ret_t address_object(object_t args) {
	object_t obj = 0;
	
	if (array_get_sizeC(args) > 1) {
		object_t port_obj;
		CALL_METHOD(port_obj, ARG(1), to_s, array_object(0));
		return address_object_ss(string_cstrC(ARG(0)), string_cstrC(port_obj));
	}
	else if (array_get_sizeC(args) == 1) {
		// parse port and url from string, url:port
		const char * adr = string_cstrC(ARG(0));
		char * colon_pos = strchr(adr, ':');
		
		if (!colon_pos) {
			return address_object_ss(adr, "0");
		}
		else {
			char url[256] = {0};
			strncpy(url, adr, colon_pos - adr);

			return address_object_ss(url, colon_pos + 1);
		}
	}	
}

ret_t address_from_sockaddr(struct sockaddr * addr) {
	object_t address_obj = object_alloc(0, OBJ_EMPTY|OBJ_METADATA);
	object_set_metadata(address_obj, addr);
	object_set_delegate(address_obj, address_prototype());
	RET(address_obj);	
}

ret_t address_object_ss(const char * url, const char * port) {
	struct addrinfo hints, * res = 0;
	memset(&hints, 0, sizeof(hints));
	hints.ai_family = AF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;
	
	int ret = getaddrinfo(url, port, &hints, &res);
	
	if (ret != 0 || res == 0) {
		char buf[256];
		strncpy(buf, "failed to resolve: ", 256);
		strncat(buf, gai_strerror(ret), 256);
		
		THROW(string_object(buf));
	}	
	
	struct sockaddr * data = MEM_ALLOC(sizeof(struct sockaddr), ALLOC_BLOB);
	memcpy(data, res->ai_addr, sizeof(struct sockaddr));
	
	return address_from_sockaddr(data);
}

// -- accessors ----------------------------------------------------------------------
const struct sockaddr * address_get_sockaddrC(object_t obj) {
	assert(OBJ_VALID(obj));
	return object_get_metadata(obj);
}

// -- methods ------------------------------------------------------------------------
METHOD(address, to_s) {
	struct sockaddr_in * addr = object_get_metadata(self);
	assert(addr);
	
	char buffer[256] = {0};
	
	if (addr->sin_family == AF_INET) {
		inet_ntop(addr->sin_family, &addr->sin_addr, buffer, INET_ADDRSTRLEN);
	}
	else {
		inet_ntop(addr->sin_family, &addr->sin_addr, buffer, INET_ADDRSTRLEN);
	}
	
	uint16_t port = htons(addr->sin_port);

	if (port != 0) {
		char port_str[8] = {0};
		snprintf(port_str, 8, "%i", port);
		
		strcat(buffer, ":");
		strcat(buffer, port_str);
	}

	RET(string_object(buffer));
}

METHOD(address, class) {
	RET(string_object("NET.address"));
}
