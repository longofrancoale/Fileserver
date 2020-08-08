#!/bin/bash

adduser -D tmp
apk add build-base curl sudo
sudo -u tmp curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
su
apk add git
sudo -u tmp "cd / && git clone https://github.com/marmocchio8/Fileserver.git && cp -r Fileserver/ . && rm installalpine.sh && cargo build" 
exit

