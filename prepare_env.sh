#!/bin/bash
apt-get install gnupg
apt update
apt install -y git

apt-get install -y make python2 bc python curl git zip ftp libssl-dev lftp zstd wget libfl-dev flex bison device-tree-compiler &
git clone --depth=1 https://$GIT_USER:$GIT_PASS@github.com/$LOC1 -b $BR1 kernel &
wait
