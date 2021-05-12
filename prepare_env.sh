#!/bin/bash

sudo apt-get update
sudo apt-get install -y build-essential bc python curl git zip ftp libssl-dev lftp zstd wget libfl-dev flex bison cpio device-tree-compiler

git clone --depth=1 https://$GIT_USER:$GIT_PASS@github.com/$repo_1 -b $branch_1 kernel