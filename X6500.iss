; This demonstrates how libwdi can be used in an installer script
; to automatically intall USB drivers. No files or programs will be installed,
; only the driver; the generated setup EXE is more like a fancy GUI wrapper
; over wdi-simple.exe.
;
; Requirements: Inno Setup (http://www.jrsoftware.org/isdl.php)
;
; To use this script, do the following:
; - configure libwdi (see config.h)
; - compile wdi-simple.exe
; - customize this script (application strings, wdi-simple.exe parameters, etc.)
; - open this script with Inno Setup
; - compile and run

[Setup]
AppName = X6500 FPGA Miner Driver
AppVerName = X6500 FPGA Miner Driver 1.0
AppPublisher = FPGA Mining LLC
AppPublisherURL = http://fpgamining.com/
AppVersion = 1.0
DefaultDirName = {pf}\X6500_FPGA_Miner_Driver
DefaultGroupName = X6500 FPGA Miner Driver
Compression = lzma
SolidCompression = yes
OutputBaseFilename = X6500_FPGA_Miner_Driver
; Win2000 or higher
MinVersion = 5,5
; Disable all Installer-like functionality. We're just using Inno Setup to put a fancy GUI over wdi-simple
; and don't really want to install any files or programs.
Uninstallable = no
CreateUninstallRegKey = no
DisableDirPage = yes
CreateAppDir = no


; This installation requires admin priviledges. This is needed to install
; drivers on windows vista and later.
PrivilegesRequired = admin

[Files]
; copy the 32bit wdi installer to the application directory.
; note: this installer also works with 64bit
Source: "wdi-simple.exe"; DestDir: "{tmp}"; Flags: replacesameversion promptifolder;
Source: "X6500_FPGA_Miner.inf"; DestDir: "{tmp}"; Flags: replacesameversion promptifolder;
Source: "COPYING"; DestDir: "{tmp}"; Flags: replacesameversion promptifolder;
Source: "COPYING-LGPL"; DestDir: "{tmp}"; Flags: replacesameversion promptifolder;

[Dirs]
Name: "{tmp}\usb_driver"

[Run]
; call wdi-simple
;
; -n, --name <name>          set the device name
; -f, --inf <name>           set the inf name
; -m, --manufacturer <name>  set the manufacturer name
; -v, --vid <id>             set the vendor ID (VID)
; -p, --pid <id>             set the product ID (PID)
; -i, --iid <id>             set the interface ID (MI)
; -t, --type <driver_type>   set the driver to install
;                            (0=WinUSB, 1=libusb0, 2=libusbK, 3=custom)
; -d, --dest <dir>           set the extraction directory
; -x, --extract              extract files only (don't install)
; -c, --cert <certname>      install certificate <certname> from the
;                            embedded user files as a trusted publisher
;     --stealth-cert         installs certificate above without prompting
; -s, --silent               silent mode
; -b, --progressbar=[HWND]   display a progress bar during install
;                            an optional HWND can be specified
; -l, --log                  set log level (0 = debug, 4 = none)
; -h, --help                 display usage
;
Filename: "{tmp}\wdi-simple.exe"; Flags: "runhidden"; Parameters: " --name ""X6500 FPGA Miner"" --vid 0x0403 --pid 0x6001 --progressbar={wizardhwnd} --type=1 --inf=X6500_FPGA_Miner.inf"; StatusMsg: "Installing X6500 FPGA Miner driver (this may take a few seconds) ...";

