#!/bin/bash
set -x

CHOST="${triplet}"

TOOLS="addr2line ar as c++filt dwp elfedit gprof ld ld.bfd ld.gold nm objcopy objdump ranlib readelf size strings strip"

if [[ "cross_target_platform" == "linux-"* ]]; then
  TOOLS="${TOOLS} dwp ld.gold"
  ln -s "$PREFIX/bin/ld.gold" "$PREFIX/bin/gold"
fi

for tool in $TOOLS; do
  rm $PREFIX/bin/$CHOST-$tool
  touch $PREFIX/bin/$CHOST-$tool
  ln -s $PREFIX/bin/$CHOST-$tool $PREFIX/bin/$tool
done
