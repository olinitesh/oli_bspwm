#!/bin/sh

case "$1" in
    --toggle)
        if [ "$(wmname)" != "BSPWM" ]; then
            wmname BSPWM
        else
            wmname compiz
        fi
        ;;
    *)
        echo "# $(wmname)"
        ;;
esac