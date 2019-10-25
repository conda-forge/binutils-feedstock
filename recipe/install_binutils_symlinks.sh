#!/bin/bash

CHOST="${ctng_cpu_arch}-${ctng_vendor}-linux-gnu"

ln -sf $PREFIX/bin/$CHOST-addr2line $PREFIX/bin/addr2line
ln -sf $PREFIX/bin/$CHOST-ar $PREFIX/bin/ar
ln -sf $PREFIX/bin/$CHOST-as $PREFIX/bin/as
ln -sf $PREFIX/bin/$CHOST-c++filt $PREFIX/bin/c++filt
ln -sf $PREFIX/bin/$CHOST-elfedit $PREFIX/bin/elfedit
ln -sf $PREFIX/bin/$CHOST-gprof $PREFIX/bin/gprof
ln -sf $PREFIX/bin/$CHOST-ld $PREFIX/bin/ld
ln -sf $PREFIX/bin/$CHOST-ld.bfd $PREFIX/bin/ld.bfd
ln -sf $PREFIX/bin/$CHOST-ld.gold $PREFIX/bin/ld.gold
ln -sf $PREFIX/bin/$CHOST-nm $PREFIX/bin/nm
ln -sf $PREFIX/bin/$CHOST-objcopy $PREFIX/bin/objcopy
ln -sf $PREFIX/bin/$CHOST-objdump $PREFIX/bin/objdump
ln -sf $PREFIX/bin/$CHOST-ranlib $PREFIX/bin/ranlib
ln -sf $PREFIX/bin/$CHOST-readelf $PREFIX/bin/readelf
ln -sf $PREFIX/bin/$CHOST-size $PREFIX/bin/size
ln -sf $PREFIX/bin/$CHOST-strings $PREFIX/bin/strings
ln -sf $PREFIX/bin/$CHOST-strip $PREFIX/bin/strip

ln -sf "$PREFIX/bin/ld.gold" "$PREFIX/bin/gold"
