#!/bin/bash
# this script is entirely hardcoded for my machine :)
set +x

./twiddler.sh twiddler.txt

sudo mount /dev/sdb1 ~/mnt/sdb1/ &&
    sudo cp ./twiddler.cfg ~/mnt/sdb1/twiddler.cfg &&
    sudo umount /dev/sdb1
