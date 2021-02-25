emcmake cmake .. \
  -DBOOST_ROOT=`pwd`/../../boost_1_71_0 \
  -DBoost_INCLUDE_DIR=`pwd`/../../boost_1_71_0 \
  -DBoost_LIBRARY_DIR=`pwd`/../../boost_1_71_0/stage/lib \
  -DZLIB_LIBRARY=`pwd`/../../zlib/build/libz.a \
  -DZLIB_INCLUDE_DIR="`pwd`/../../zlib/build;`pwd`/../../zlib" \
  -DBUILD_FLATBUFFERS=OFF \
  -DBUILD_TESTS=OFF \
  -DSTATIC_LINK_VW=ON
