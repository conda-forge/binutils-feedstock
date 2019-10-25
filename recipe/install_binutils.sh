#!/bin/bash

mkdir build
cd build

../configure --prefix="$PREFIX" --enable-gold --target=$HOST
make -j${CPU_COUNT}
make install-strip
