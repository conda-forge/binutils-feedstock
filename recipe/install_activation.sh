if [[ "$target_platform" == "win-"* ]]; then
  IS_WIN=1
else
  IS_WIN=0
fi

TOOLS="addr2line ar as c++filt elfedit gprof ld nm objcopy objdump ranlib readelf size strings strip"
if [[ "${cross_target_platform}" == "linux-"* ]]; then
  TOOLS="${TOOLS} dwp ld.gold"
else
  TOOLS="${TOOLS} dlltool dllwrap windmc windres"
fi

if [[ "${target_platform}" == "win-"* ]]; then
  LIBRARY_PREFIX="/Library"
else
  LIBRARY_PREFIX=""
fi

CHOST="${triplet}"

find . -name "*activate*.*" -exec sed -i.bak "s|@IS_WIN@|${IS_WIN}|g"                   "{}" \;
find . -name "*activate*.*" -exec sed -i.bak "s|@TOOLS@|${TOOLS}|g"                     "{}" \;
find . -name "*activate*.*" -exec sed -i.bak "s|@CHOST@|${CHOST}|g"                     "{}" \;
find . -name "*activate*.*" -exec sed -i.bak "s|@LIBRARY_PREFIX@|${LIBRARY_PREFIX}|g"   "{}" \;
