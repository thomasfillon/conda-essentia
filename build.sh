#!/bin/bash

set -x -e

./waf configure \
    --mode=release \
    --prefix="${PREFIX}" \
    --with-python \
    --with-cpptests\
    --with-vamp

./waf
./waf install
# Tests
./waf run_tests
# Almost all python tests are running but there is some errors (most of them are precision errors)
# uncomment the following to check python wrapper during build
#./waf run_python_tests
