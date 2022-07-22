EDK2 for Samsung Galaxy A52s 5G.

Forked from: https://github.com/gezine/edk2-smt733

## Working

Display

Boots to EFI shell

![EFI shell](efishell.jpg)

## Not Working

UFS

SDcard

USB

ACPI

etc...


For 4G and 8G RAM models you might need to change some values

## Building

Tested on:

Ubuntu 20.04 (x86)


Setup
```
git clone https://github.com/Gezine/edk2-SMA528B
git clone https://github.com/tianocore/edk2.git --recursive --depth 1
sudo apt install build-essential uuid-dev iasl git nasm python3-distutils gcc-aarch64-linux-gnu abootimg
cd edk2-SMA528B
./firstrun.sh
```
Build
```
./build_debug.sh
```
Flash
```
heimdall flash --BOOT boot-SMA528B_debug.img
```

# Credits

SimpleFbDxe screen driver is from imbushuo's [Lumia950XLPkg](https://github.com/WOA-Project/Lumia950XLPkg).

`map220v` for his original `edk2-a72q` and teaching me a lot of things

`fxsheep` for his original `edk2-sagit`

`strongtz` for maintaining Renegade Project****

