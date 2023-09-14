#!/bin/bash
# install openjpeg


if [ ! -f openjpeg-2.4.0.tar.gz ]; then
    wget -O 'openjpeg-2.4.0.tar.gz' 'https://github.com/python-pillow/pillow-depends/blob/7a05feeacb1b14918a873c2993ef9bc7815f69c9/openjpeg-2.4.0.tar.gz?raw=true'

fi

rm -r openjpeg-2.4.0
tar -xvzf openjpeg-2.4.0.tar.gz


pushd openjpeg-2.4.0

cmake -DCMAKE_INSTALL_PREFIX=/usr . && make -j4 && make -j4 install

popd

