#!/bin/bash
set -euo pipefail

re2_release=$1
version=$2

# Download the re2 release from GitHub
curl -L "https://github.com/google/re2/archive/${re2_release}.tar.gz" | tar xz
cd re2-${re2_release}

# Compile and install the release
make common-install prefix=/usr DESTDIR=/tmp/installdir
cmake . -DBUILD_SHARED_LIBS=ON -DRE2_BUILD_TESTING=OFF -DCMAKE_CXX_FLAGS_RELEASE=-DNDEBUG -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DCMAKE_FIND_FRAMEWORK=LAST -DCMAKE_VERBOSE_MAKEFILE=ON -Wno-dev
make
make install DESTDIR=/tmp/installdir

# Package up the release with fpm
fpm -s dir -t deb -n libre2-dev -v "${version}" -C /tmp/installdir --replaces libre2-1v5 --replaces libre2-4 usr/include usr/lib
