#!/usr/bin/env bash

PKG=$1

if $(dpkg --status $PKG > /dev/null 2>&1) ; then
    exit 0
fi

echo "Installing $PKG..."
apt-get update && apt-get -y install $PKG > /dev/null 2>&1
exit $?
