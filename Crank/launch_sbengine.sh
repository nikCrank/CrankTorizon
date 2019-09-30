
RUNTIME=/Crank/runtime/linux-imx6wayland-armle-opengles_2.0-wayland_GST01-obj
SBBINARY=$RUNTIME/bin/sbengine
export SB_PLUGINS=$RUNTIME/plugins
export LD_LIBRARY_PATH=$RUNTIME/lib:$LD_LIBRARY_PATH
export LD_PRELOAD=/usr/lib/arm-linux-gnueabihf/libwayland-egl.so.1
export ARGS="-v"
#export APP="./anim/Animations.gapp"

$SBBINARY $ARGS $1

