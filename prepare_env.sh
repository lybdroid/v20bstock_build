#!/bin/bash

sudo apt install bc

git clone --depth=1 https://$GIT_USER:$GIT_PASS@github.com/lybxlpsv/V20-Kernel-LYB.git -b develop-lts kernel
git clone --depth=1 https://github.com/mvaisakh/gcc-arm64 -b lld-integration
git clone --depth=1 https://github.com/mvaisakh/gcc-arm -b lld-integration