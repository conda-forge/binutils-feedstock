#!/bin/bash

set -e

cd build

make install-strip
export CHOST="${ctng_cpu_arch}-conda-linux-gnu"
export OLD_CHOST="${ctng_cpu_arch}-${ctng_vendor}-linux-gnu"
mkdir -p $PREFIX/$OLD_CHOST/bin

# Remove hardlinks and replace them by softlinks
for tool in addr2line ar as c++filt dwp elfedit gprof ld.bfd ld.gold nm objcopy objdump ranlib readelf size strings strip; do
  rm -rf $PREFIX/$CHOST/bin/$tool
  ln -s $PREFIX/bin/$CHOST-$tool $PREFIX/$CHOST/bin/$tool || true;
  ln -s $PREFIX/bin/$CHOST-$tool $PREFIX/bin/$OLD_CHOST-$tool || true;
done

rm $PREFIX/bin/$CHOST-ld || true;
rm $PREFIX/bin/$OLD_CHOST-ld || true;
rm $PREFIX/$OLD_CHOST/bin/ld || true;
rm $PREFIX/$CHOST/bin/ld || true;

#ln -s $PREFIX/$CHOST $PREFIX/$OLD_CHOST
