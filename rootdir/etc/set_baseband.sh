#!/system/bin/sh

product=`getprop ro.build.product`
# grep the modem partition for baseband version and set it
case "$product" in
        "f350s" | "f350k" | "f350l" | "d838")
        setprop gsm.version.baseband `strings /firmware/image/modem.b21 | grep "^M8974A-" | head -1`
        ;;
esac
