# Boost must be cloned and compiled with
#  ./bootstraph.sh
#  ./b2 toolset=emscripten link=static variant=release threading=multi \
#  runtime-link=static cxxflags="-s USE_PTHREADS=1" \
#  linkflags="--shared-memory -Wl -pthread" \
#  program_options system
#  
# After that, each output directory should run emar q libboost_NAME.a *.bc
# ZLIB must be compiled with emcmake and emmake as well

emcmake cmake .. \
  -DBOOST_ROOT=`pwd`/../../boost_1_71_0 \
  -DBoost_INCLUDE_DIR=`pwd`/../../boost_1_71_0 \
  -DBoost_LIBRARY_DIR="`pwd`/../../boost_1_71_0/bin.v2/libs/system/build/emscripten-2.0.14/release/link-static/threading-multi/visibility-hidden/;`pwd`/../../boost_1_71_0/bin.v2/libs/program_options/build/emscripten-2.0.14/release/link-static/threading-multi/visibility-hidden/" \
  -DZLIB_LIBRARY=`pwd`/../../zlib-1.2.11/build/libz.a \
  -DZLIB_INCLUDE_DIR="`pwd`/../../zlib-1.2.11/build;`pwd`/../../zlib-1.2.11" \
  -DBUILD_FLATBUFFERS=OFF \
  -DBUILD_TESTS=OFF \
  -DSTATIC_LINK_VW=ON \
  -DBUILD_SLIM_VW=ON \
  -DCMAKE_CXX_FLAGS="-s USE_PTHREADS=1 -s WASM=1 -s EXTRA_EXPORTED_RUNTIME_METHODS='[\"cwrap\", \"allocate\", \"intArrayFromString\"]' -s ASSERTIONS=1" \
  -DCMAKE_EXE_LINKER_FLAGS="-s LLD_REPORT_UNDEFINED -pthread"
