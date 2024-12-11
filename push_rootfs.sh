#!/bin/bash
echo "Stopping Chromium and qt-superbird-app" 
adb shell "/etc/init.d/S95supervisord stop"
sleep 1

echo "Removing old config files"
adb shell "rm -rf /var/lib/qt-superbird-app/settings/rcs_devices"
adb shell "rm -rf /var/lib/qt-superbird-app/settings/can_use_superbird"
adb shell "rm -rf /var/lib/qt-superbird-app/settings/local-storage-data"
adb shell "rm -rf /var/lib/qt-superbird-app/settings/onboarding_status"
adb shell "rm -rf /var/lib/qt-superbird-app/settings/rcs"
adb shell "rm -rf /var/lib/qt-superbird-app/settings/setup_state"
sleep 1

echo "Remounting root as R/W"
adb shell mount -o remount,rw /
sleep 1

echo "Pushing files in rootfs"
adb push rootfs/* /
sleep 1
adb shell "chmod +x /etc/init.d/S90unbrick"

echo "Syncing to disk"
adb shell sync
sleep 1

echo "Rebooting"
adb shell reboot