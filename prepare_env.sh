#!/bin/bash

sudo apt install bc

git config credential.helper "!f() { echo \"username=${GIT_USER}\\npassword=${GIT_PASS}\"; }; f"

git clone --depth=1 https://github.com/lybxlpsv/V20-Kernel-LYB.git -b develop-lts kernel
git clone --depth=1 https://github.com/mvaisakh/gcc-arm64 -b lld-integration
git clone --depth=1 https://github.com/mvaisakh/gcc-arm -b lld-integration