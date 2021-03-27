#!/bin/bash

cd kernel

CURR_PATH=${0%/*}
CURR_PATH="$(realpath $CURR_PATH)/"

mkdir -p "${CURR_PATH}/release"

variants="H990DS"
GCC_VER=$(./gcc64/bin/aarch64-elf-gcc --version | head -n 1)

for variant in $variants
do
    ./build.sh $variant
    ./copy_finished.sh
    cd out
    curl -F document=@H990DS_v2.0-BETA1-v20bcustom.zip "https://api.telegram.org/bot$BOTTOKEN/sendDocument" \
        -F chat_id="$CHATID" \
        -F caption="[BOT] Build for ${variant} v20bcustom ${GCC_VER}"

done

