#!/bin/bash

if [ -n "$LIRIDIR" ]; then
    LIRIDIR="$(realpath $LIRIDIR)"
else
    REPOBASE="$(realpath $(dirname ${BASH_SOURCE[0]}))"
    LIRIDIR="$REPOBASE/.build/install-root"
fi

if [ ! -d "$LIRIDIR" ]; then
    mkdir -p "$LIRIDIR"
fi

if [ -z "$XDG_DATA_DIRS" ]; then
    XDG_DATA_DIRS="/usr/local/share:/usr/share"
fi

if [ -z "$XDG_CONFIG_DIRS" ]; then
    XDG_CONFIG_DIRS="/etc/xdg"
fi

export LD_LIBRARY_PATH="$LIRIDIR/lib:$LD_LIBRARY_PATH"
export XDG_DATA_DIRS="$LIRIDIR/share:$XDG_DATA_DIRS"
export XDG_CONFIG_DIRS="$LIRIDIR/etc/xdg:$XDG_CONFIG_DIRS"
export QT_PLUGIN_PATH="$LIRIDIR/lib/plugins"
export QML2_IMPORT_PATH="$LIRIDIR/lib/qml:$QML2_IMPORT_PATH"
export PKG_CONFIG_PATH="$LIRIDIR/lib/pkgconfig:$PKG_CONFIG_PATH"
export PATH="$LIRIDIR/bin:$PATH"

if [ "$1" == "nvidia" ]; then
    export QT_XCB_GL_INTEGRATION="xcb_glx"
else
    export QT_XCB_GL_INTEGRATION="xcb_egl"
fi
