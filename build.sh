#!/bin/bash
case "$SHED_BUILD_MODE" in
    toolchain)
        ./configure --prefix=/tools || exit 1
        ;;
    *)
        ./configure --prefix=/usr --bindir=/bin || exit 1
        ;;
esac
make -j $SHED_NUM_JOBS &&
make DESTDIR="$SHED_FAKE_ROOT" install
