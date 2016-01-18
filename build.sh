#!/bin/bash

set -x -e

cp $RECIPE_DIR/waf-1.8.18 $SRC_DIR/waf
python waf --version

python waf configure \
    --mode=release \
    --prefix="${PREFIX}"

python waf
python waf install
