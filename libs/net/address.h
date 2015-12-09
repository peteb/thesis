/*
 * $Id: address.h 929 2010-04-07 13:39:56Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef NET_ADDRESS_H_N0T9WYR5
#define NET_ADDRESS_H_N0T9WYR5

#include <libthorn/object.h>

struct sockaddr;

ret_t address_object(object_t args);
ret_t address_from_sockaddr(struct sockaddr * addr);
const struct sockaddr * address_get_sockaddrC(object_t obj);

#endif /* end of include guard: NET_ADDRESS_H_N0T9WYR5 */
