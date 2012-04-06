FPGA Mining Windows Driver Installation Program
==================================================

Bitcoin FPGA Mining boards like the X6500 require the use of libusb drivers on Windows. We distribute an installation program that makes it easy to install the driver. This repo contains the source files to create that installation program.


## Download

### Download [X6500 Windows Driver (XP/Vista/7)](https://github.com/downloads/fpgaminer/FPGA-Mining-Driver-Install/X6500_FPGA_Miner_Driver_20120405b.exe)  

## Instructions

Simply run the installer and complete installation. The drivers should now be installed, and Windows should recognize your mining boards correctly.

If you have trouble, are using Windows XP, or Windows recognizes your mining boards as something else, connect all your mining boards to your computer, disconnect all other USB devices, and run the installer again.

## Uninstall

This installation program installs only drivers, so there is nothing to uninstall. You can, if you wish, uninstall the drivers using Windows' Device Manager.

.  

.  


### Compiling It Yourself

The installation program uses libwdi to perform driver install, and is built using Inno Setup.

 * Download and compile libwdi so that you have wdi-simple.exe.
 * Download and install Inno Setup.
 * Use Inno Setup to compile X6500.iss.


