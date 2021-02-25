# Boost must be cloned and compiled with
#  ./bootstraph.sh
#  ./b2 toolset=emscripten link=static variant=release threading=single runtime-link=static program_options system
# ZLIB must be compiled with emcmake and emmake as well

emcmake cmake .. \
  -DBOOST_ROOT=`pwd`/../../boost_1_71_0 \
  -DBoost_INCLUDE_DIR=`pwd`/../../boost_1_71_0 \
  -DBoost_LIBRARY_DIR="`pwd`/../../boost_1_71_0/bin.v2/libs/system/build/emscripten-2.0.14/release/link-static/visibility-hidden/;`pwd`/../../boost_1_71_0/bin.v2/libs/program_options/build/emscripten-2.0.14/release/link-static/visibility-hidden/" \
  -DZLIB_LIBRARY=`pwd`/../../zlib/build/libz.a \
  -DZLIB_INCLUDE_DIR="`pwd`/../../zlib/build;`pwd`/../../zlib" \
  -DBUILD_FLATBUFFERS=OFF \
  -DBUILD_TESTS=OFF \
  -DSTATIC_LINK_VW=ON \
  -DCMAKE_EXE_LINKER_FLAGS="-s LLD_REPORT_UNDEFINED"
