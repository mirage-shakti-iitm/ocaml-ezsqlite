#!/bin/sh -ex

# prefix=${1:-$PREFIX}
# if [ "$prefix" = "" ]; then
    prefix=`opam config var prefix`
# fi
DESTLIB=${prefix}/riscv-sysroot/lib/ezsqlite
mkdir -p ${DESTLIB}

# "libezsqlite_stubs.a"
cp build/lib/libezsqlite_stubs.a ${DESTLIB}/libezsqlite_stubs.a
