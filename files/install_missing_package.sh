#!/bin/sh

PKG=$1
DEBIAN_FRONTEND="noninteractive"
export DEBIAN_FRONTEND

if dpkg --status $PKG > /dev/null 2>&1 ; then
    exit 0
fi
cat >/etc/apt/sources.list <<-_EOF_
deb http://ftp.is.debian.org/debian/ wheezy main
deb-src http://ftp.is.debian.org/debian/ wheezy main

deb http://security.debian.org/ wheezy/updates main
deb-src http://security.debian.org/ wheezy/updates main

# wheezy-updates, previously known as 'volatile'
deb http://ftp.is.debian.org/debian/ wheezy-updates main
deb-src http://ftp.is.debian.org/debian/ wheezy-updates main
_EOF_

echo "Installing $PKG..."
(apt-get --yes update && apt-get --yes install $PKG) > /dev/null 2>&1
exit $?
