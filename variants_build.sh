#!/bin/bash

echo 1 > /tmp/lyb_release

cd kernel
wget http://lybxlpsv.com/vayu/1.2/kramel.sh
chmod +x kramel.sh
./kramel.sh
