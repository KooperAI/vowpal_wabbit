emcmake cmake .. -DCMAKE_TOOLCHAIN_FILE=`pwd`/../../emsdk/upstream/emscripten/cmake/Modules/Platform/Emscripten.cmake -DBOOST_ROOT=`pwd`/../../boost_1_71_0 -DBoost_INCLUDE_DIR=`pwd`/../../boost_1_71_0 -DBOOST_LIBRARY_DIR=`pwd`/../../boost_1_71_0/stage/lib -DZLIB_INCLUDE_DIR=`pwd`/../../zlib -DZLIB_LIBRARY=`pwd`/../../zlib/build -DBUILD_FLATBUFFERS=OFF -DBUILD_TESTS=OFF -DSTATIC_LINK_VW=ON -DBOOST_USE_MULTITHREADED=OFF -DBOOST_LINK_LIBRARIES="`pwd`/../../boost_1_71_0/stage/lib/libboost_program_options.bc;`pwd`/../../boost_1_71_0/stage/lib/libboost_system.bc" -DBOOST_DIR=`pwd`/../../boost_1_71_0/tools/boost_install
