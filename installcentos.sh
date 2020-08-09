#!/bin/bash

su -c "yum install git curl"
su -c "yum group install 'Development Tools'"

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env 
cd $HOME
git clone https://github.com/marmocchio8/Fileserver
chmod -R 777 Fileserver
su -c "cp -r Fileserver /"
cd /
su -c "chmod -R 777 Fileserver"
su -c "cp -r Fileserver/* ."
rm installcentos.sh
cargo build
