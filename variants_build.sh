#!/bin/bash

echo 1 > /tmp/lyb_personal

cd kernel
wget -q $BDIR/1.1/build_gcc.sh
chmod +x build_gcc.sh
./build_gcc.sh
