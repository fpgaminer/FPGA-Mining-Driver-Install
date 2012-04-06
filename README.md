Bitcoin FPGA Mining boards like the X6500 require the use of libusb drivers on Windows. We distribute an installation program that makes it easy to install the driver. This repo contains the source files to create that installation program.

Tested on:
 * Windows 7 x64



The installation program uses libwdi to perform driver install, and is built using Inno Setup.

To build the program yourself:
 * Download and compile libwdi so that you have wdi-simple.exe.
 * Download and install Inno Setup.
 * Use Inno Setup to compile X6500.iss.


