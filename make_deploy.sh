#!/usr/bin/env bash
set -e
LIB="visual-crest.a"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "https://github.com/inkmodest/libloosescalar/releases/download/bright-cedar-hidden-delta/visual-crest.a"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
