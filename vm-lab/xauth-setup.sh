#!/bin/bash

# xauth with complain unless ~/.Xauthority exists
touch ~/.Xauthority

# only this one key is needed for X11 over SSH 
xauth generate :0 . trusted > /tmp/xauthlog

# generate our own key, xauth requires 128 bit hex encoding
xauth add ${HOST}:0 . $(xxd -l 16 -p /dev/urandom) >> /tmp/xauthlog
