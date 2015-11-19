#!/bin/bash
set -ex
if [ ! -f /usr/bin/unzip ]; then
    echo "Please installed unzip first"
    exit 0
fi
file=Hack-v2_018-ttf.zip
wget https://github.com/chrissimpkins/Hack/releases/download/v2.018/$file
unzip $file
sudo chmod a+x Hack-*.ttf
sudo mv Hack-*.ttf /usr/share/fonts/truetype/
fc-cache -r -v

