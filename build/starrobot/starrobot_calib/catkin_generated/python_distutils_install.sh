#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/star/starrobot_ws/src/starrobot/starrobot_calib"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/star/starrobot_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/star/starrobot_ws/install/lib/python2.7/dist-packages:/home/star/starrobot_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/star/starrobot_ws/build" \
    "/usr/bin/python" \
    "/home/star/starrobot_ws/src/starrobot/starrobot_calib/setup.py" \
    build --build-base "/home/star/starrobot_ws/build/starrobot/starrobot_calib" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/star/starrobot_ws/install" --install-scripts="/home/star/starrobot_ws/install/bin"
