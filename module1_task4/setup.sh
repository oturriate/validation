#!/bin/bash
apt-get update && apt-get install -y hugo make
apt install git
git clone https://github.com/lasseborly/anybodyhome.git themes/anybodyhome
sed '/theme/d' config.toml >> config.tmp
rm -rf ./config.toml 
mv config.tmp config.toml
chmod 0776 config.toml
make build

