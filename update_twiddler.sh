#!/bin/bash
# this script is entirely hardcoded for my machine :)
set +x

./twiddler.sh twiddler.txt

cat <<EOF | sudo bash 
    mount /dev/sdb1 $HOME/mnt/sdb1/
    sudo cp ./twiddler.cfg $HOME/mnt/sdb1/twiddler.cfg 
    sudo umount /dev/sdb1
EOF
