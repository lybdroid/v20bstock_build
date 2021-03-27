#!/bin/bash

sudo apt install bc
sudo npm install -g git-credential-env

git config credential.helper "env --username=GIT_USER --password=GIT_PASS"

git clone --depth=1 https://github.com/lybxlpsv/V20-Kernel-LYB.git -b develop-lts kernel
git clone --depth=1 https://github.com/mvaisakh/gcc-arm64 -b lld-integration
git clone --depth=1 https://github.com/mvaisakh/gcc-arm -b lld-integration