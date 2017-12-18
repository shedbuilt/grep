#!/bin/bash
./configure --prefix=/usr --bindir=/bin || exit 1
make -j $SHED_NUMJOBS || exit 1
make "DESTDIR=${SHED_FAKEROOT}" install
