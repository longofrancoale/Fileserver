#!/bin/bash

adduser -D tmp
apk add build-base curl
su tmp
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
su
apk add git
su tmp
cd /
git clone https://github.com/marmocchio8/Fileserver.git
cp -r fileserver/ .
rm installalpine.sh
cargo build
exit

