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

if [ -d $LIRIDIR/lib64 ]; then
    LIRI_LIBDIR=$LIRIDIR/lib64
else
    LIRI_LIBDIR=$LIRIDIR/lib
fi
if [ -d $LIRIDIR/lib64/systemd ]; then
    LIRI_SYSTEMD_LIBDIR=$LIRIDIR/lib64/systemd
else
    LIRI_SYSTEMD_LIBDIR=$LIRIDIR/lib/systemd
fi

export LD_LIBRARY_PATH="$LIRI_LIBDIR:$LD_LIBRARY_PATH"
export XDG_DATA_DIRS="$LIRIDIR/share:$XDG_DATA_DIRS"
export XDG_CONFIG_DIRS="$LIRIDIR/etc/xdg:$XDG_CONFIG_DIRS"
export QT_PLUGIN_PATH="$LIRI_LIBDIR/plugins"
export QML2_IMPORT_PATH="$LIRI_LIBDIR/qml:$QML2_IMPORT_PATH"
export PKG_CONFIG_PATH="$LIRI_LIBDIR/pkgconfig:$PKG_CONFIG_PATH"
export PATH="$LIRIDIR/bin:$PATH"

if [ "$1" == "nvidia" ]; then
    export QT_XCB_GL_INTEGRATION="xcb_glx"
else
    export QT_XCB_GL_INTEGRATION="xcb_egl"
fi

# Update D-Bus activation environment and link systemd units
if which systemctl >/dev/null; then
    # Pick up our systemd units
    mkdir -p "$XDG_RUNTIME_DIR/systemd/user.control"
    command cp -r $LIRI_SYSTEMD_LIBDIR/user/* "$XDG_RUNTIME_DIR/systemd/user.control"
    systemctl --user daemon-reload

    # Let the session bus reread the environment
    systemctl --user reload dbus.service
else
    if which dbus-update-activation-environment >/dev/null; then
        dbus-update-activation-environment --systemd XDG_DATA_DIRS XDG_CONFIG_DIRS LD_LIBRARY_PATH QT_PLUGIN_PATH QML2_IMPORT_PATH PATH
    fi
fi
