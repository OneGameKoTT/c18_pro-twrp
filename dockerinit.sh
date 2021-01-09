#!/bin/sh\

cd $HOME/twrp
docker run --privileged --rm -i \
  -e USER_ID=$(id -u) -e GROUP_ID=$(id -g) \
  -v "$HOME/twrp:/home/builder/twrp:rw,z" \
  -v "$HOME/.ccache:/srv/ccache:rw" \
  fr3akyphantom/droid-builder \
  /bin/bash << EOF
    cd /home/builder/twrp
    mkdir out
    source build/envsetup.sh
    lunch omni_C18_Pro-eng
    make -j$(nproc --all) recoveryimage
    exit
    EOF
