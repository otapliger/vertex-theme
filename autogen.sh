#!/bin/sh
cwd=$(pwd)

test -z "$srcdir" && srcdir=$(dirname "$0")
test -z "$srcdir" && srcdir=.

cd "$srcdir"
mkdir -p m4
autoreconf --verbose --force --install || exit $?

cd "$cwd"
"$srcdir/configure" $@
