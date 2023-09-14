#!/bin/bash
# install libimagequant

git clone -b 2.6.0 https://github.com/pornel/pngquant

pushd pngquant

make -C lib shared
cp lib/libimagequant.so* /usr/lib/
cp lib/libimagequant.h /usr/include/

popd
