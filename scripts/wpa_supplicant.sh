#!/bin/sh

while ! ip link show wlp4s0 >/dev/null 2>&1
do
    sleep 1
done

. /etc/dinit.d/config/wpa_supplicant.conf
exec /usr/bin/wpa_supplicant -i "${WPA_INTERFACE}" -c /etc/wpa_supplicant/wpa_supplicant-"${WPA_INTERFACE}".conf
