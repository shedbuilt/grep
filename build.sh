#!/bin/bash
./configure --prefix=/usr --bindir=/bin
make -j $SHED_NUMJOBS
make DESTDIR=${SHED_FAKEROOT} install
