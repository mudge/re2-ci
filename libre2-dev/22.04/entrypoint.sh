#!/bin/bash
set -euo pipefail

re2_release=$1
version=$2

# Download the re2 release from GitHub
curl -L "https://github.com/google/re2/archive/${re2_release}.tar.gz" | tar xz
cd re2-${re2_release}

# Compile and install the release
make install prefix=/usr DESTDIR=/tmp/installdir

# Package up the release with fpm
if [ "${version}" -ge "20230701" ]
then
  fpm -s dir -t deb -n libre2-dev -v "${version}" -C /tmp/installdir --replaces libre2-9 -d libabsl-dev usr/include usr/lib
else
  fpm -s dir -t deb -n libre2-dev -v "${version}" -C /tmp/installdir --replaces libre2-9 usr/include usr/lib
fi
