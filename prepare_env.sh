#!/bin/bash
apt update && apt-get install -y git &
git clone --depth=1 https://$GIT_USER:$GIT_PASS@github.com/$LOC1 -b $BR1 kernel &
wait
