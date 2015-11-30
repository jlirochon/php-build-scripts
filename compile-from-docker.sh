#!/bin/bash
apt-get -yqq update
apt-get -fyqq install git build-essential autoconf libtool
cd /tmp
git clone https://github.com/jlirochon/php-build-scripts.git
cd php-build-scripts
./compile.sh $@
cp install.log /mnt/output
tar -czf php-5.6.10-scaleway-c1.tar.gz bin
mv php-5.6.10-scaleway-c1.tar.gz /mnt/output
