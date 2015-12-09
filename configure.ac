#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ(2.50)
AC_INIT([thorn-llvm], [0.1], [pete-bac at dsv.su.se])
AC_CONFIG_SRCDIR([src/main.cpp])
AM_CONFIG_HEADER([config.h])
AM_INIT_AUTOMAKE([subdir-objects])

# Checks for programs.
AC_PROG_CXX
AC_PROG_CC

# Checks for libraries.

# Checks for header files.
AC_HEADER_STDC
AC_CHECK_HEADERS([stdlib.h string.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_HEADER_STDBOOL
AC_C_CONST
AC_C_INLINE
AC_TYPE_SIZE_T
AC_C_VOLATILE

# Checks for library functions.
AC_FUNC_MALLOC
AC_CHECK_FUNCS([strchr strpbrk strstr])

AC_CONFIG_FILES([Makefile
                 src/Makefile])
#AC_CONFIG_SUBDIRS([llvm-2.6])
AC_OUTPUT
