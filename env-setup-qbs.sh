#!/bin/bash

if [ -z "$LIRI_PREFIX" ]; then
    LIRI_PREFIX=/usr/local
fi

if [ -z "$LIRI_CONFIG_NAME" ]; then
    LIRI_CONFIG_NAME="qtc_Desktop_Debug"
fi

if [ -n "$LIRIDIR" ]; then
    LIRIDIR="$(realpath $LIRIDIR)"
else
    REPOBASE="$(realpath $(dirname ${BASH_SOURCE[0]}))"
    LIRIDIR="$REPOBASE/.build/$LIRI_CONFIG_NAME/install-root"
fi

if [ ! -d "$LIRIDIR" ]; then
    mkdir -p "$LIRIDIR"
fi

export LD_LIBRARY_PATH="$LIRIDIR/$LIRI_PREFIX/lib:$LD_LIBRARY_PATH"
export XDG_DATA_DIRS="$LIRIDIR/$LIRI_PREFIX/share:/usr/local/share:/usr/share:~/.local/share:~/.local/share/flatpak/exports/share"
export XDG_CONFIG_DIRS="$LIRIDIR/etc/xdg:/etc/xdg"
export QT_PLUGIN_PATH="$LIRIDIR/$LIRI_PREFIX/lib/plugins"
export QML2_IMPORT_PATH="$LIRIDIR/$LIRI_PREFIX/lib/qml:$QML2_IMPORT_PATH"
export PKG_CONFIG_PATH="$LIRIDIR/$LIRI_PREFIX/lib/pkgconfig:$PKG_CONFIG_PATH"
export PATH="$LIRIDIR/$LIRI_PREFIX/bin:$PATH"

if [ "$1" == "nvidia" ]; then
    export QT_XCB_GL_INTEGRATION="xcb_glx"
else
    export QT_XCB_GL_INTEGRATION="xcb_egl"
fi
