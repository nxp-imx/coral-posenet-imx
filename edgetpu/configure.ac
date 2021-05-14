#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.
#
# SPDX-License-Identifier: Apache-2.0
# Copyright 2021 NXP

AC_PREREQ([2.69])

AC_INIT(Google Coral Edgetpu Library, [0.1.0], http://www.nxp.com)

AM_INIT_AUTOMAKE([foreign tar-ustar])

LT_INIT([disable-static])

# Checks for programs.
AC_PROG_CXX
AC_PROG_CC

CFLAGS="$CFLAGS -I$SDKTARGETSYSROOT/usr/include/imx"

# Checks for typedefs, structures, and compiler characteristics.
AC_CHECK_HEADER_STDBOOL
AC_TYPE_SIZE_T
AC_TYPE_UINT8_T

dnl set the plugindir where plugins should be installed
plugindir="\$(libdir)"
AC_SUBST(plugindir)

AC_OUTPUT(
Makefile
)
