#!/bin/bash
apt update && apt-get install -y git

apt-get install -y make python2 bc python curl git zip ftp libssl-dev lftp zstd wget libfl-dev flex bison cpio device-tree-compiler &
git clone --depth=1 https://$GIT_USER:$GIT_PASS@github.com/$LOC1 -b $BR1 kernel &
wait
