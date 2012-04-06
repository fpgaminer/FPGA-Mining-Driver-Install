FPGA Mining Windows Driver Installation Program
==================================================

Bitcoin FPGA Mining boards like the X6500 require the use of libusb drivers on Windows. We distribute an installation program that makes it easy to install the driver. This repo contains the source files to create that installation program.


## Download

### Download [X6500 Windows Driver (XP/Vista/7)](https://github.com/downloads/fpgaminer/FPGA-Mining-Driver-Install/X6500_FPGA_Miner_Driver_20120405a.exe)  

.  

.  


### Compiling It Yourself

The installation program uses libwdi to perform driver install, and is built using Inno Setup.

 * Download and compile libwdi so that you have wdi-simple.exe.
 * Download and install Inno Setup.
 * Use Inno Setup to compile X6500.iss.


