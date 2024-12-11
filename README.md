# temp-unbrick
A method for temporarily unbricking the Spotify Car Thing

Join the Discord for support: https://tl.mt/d

# Disclaimer: This will only temporarily unbrick the Car Thing. 
Once Spotify turns off the server side APIs, some functions like library browsing, voice controls, and tips will stop working. Local playback controls will keep working until Spotify completely removes Car Thing support from the mobile app. At that point, your only option will be to downgrade the Spotify app but even that will eventually stop working.

We are currently working on keeping the original UI working even after all that happens.

## Easy installation method
1. Download the pre-built firmware from here: https://thingify.tools/firmware/P3QZbZIDWnp5m_azQFQqP/I9WTLvY4v8OYbv4uL-ktA
2. Extract the files to a new folder
3. Visit https://terbium.app/ and follow the instructions there to flash the firmware
4. After the firmware is installed, reboot your Car Thing by replugging it
5. Since Spotify disabled the set-up menu in the app, you will need to manually pair your Car Thing. Refer to the Pairing section

## Manual installation method
1. Install any ThingLabs firmware older than 8.9.2
2. Download this repository with git or by downloading the ZIP
3. Make sure ADB is installed and working on your computer
4. If you're on Linux, simply run [push_rootfs.sh](push_rootfs.sh)
5. If you're on Windows, you will need to run the `adb` commands in there one by one
6. After running the script or `adb reboot`, you may need to re-pair your phone. Refer to the Pairing section


## Pairing
After you install the unbrick with one of the above methods, you may need to re-pair your phone. If it doesn't automatically connect, just press `Go to phone list` then `Add a new phone`. Once the Car Thing is in pairing mode, go directly to your phone's Bluetooth settings (where you'd pair Bluetooth headphones, speakers, etc.) and pair to it there. Your Car Thing should start working right after pairing it.

## How it works
Spotify only added the kill switch in the last version of their firmware (8.9.2) so using an older version means the Car Thing will keep working until the server APIs get shut off. After that point, the Car Thing will only be able to do local playback controls as that is handled entirely within the mobile app. The files in this repo will bypass the setup process on the Car Thing so that it can keep functioning even after the API gets shut off.
