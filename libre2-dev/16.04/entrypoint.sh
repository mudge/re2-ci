#!/bin/bash
set -euo pipefail

re2_release=$1
version=$2

# Download the re2 release from GitHub
curl -L "https://github.com/google/re2/archive/${re2_release}.tar.gz" | tar xz
cd re2-${re2_release}

# Compile and install the release
export CPPFLAGS="-std=c++11"
make install prefix=/usr DESTDIR=/tmp/installdir

# Package up the release with fpm
fpm -s dir -t deb -n libre2-dev -v "${version}" -C /tmp/installdir --replaces libre2-1v5 --replaces libre2-4 --replaces libre2-5 --replaces libre2-8 --replaces libre2-9 usr/include usr/lib
