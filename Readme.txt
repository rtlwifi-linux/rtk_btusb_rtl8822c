===============
  TITLE
===============

The document describes how to support Realtek Bluetooth USB driver in Linux system.

===============
  REQUIREMENT
===============

The supported kernel version is 2.6.32 - 5.3.

=============================
  QUICKLY INSTALL AUTOMATICALLY
=============================

  $ sudo make install

===============
  FOR USB I/F
===============

-Installation

  1. Build and install USB driver, change to the driver direcotory
   $ cd usb
   $ sudo make install

  2. Copy the right FW file and config file to the correct path.
   $ sudo cp rtkbt-firmware/lib/firmware/rtl8xxxxx_fw /lib/firmware/
   $ sudo cp rtkbt-firmware/lib/firmware/rtl8xxxxx_config /lib/firmware/

   NOTE: PLEASE REFER THE FORWARD SECTION OF FILENAME LIST TO CORRESPONDE THE FW FILENAME AND THE CONFIG FILENAME WITH THE CHIP.
	   
  3. Insert Realtek Bluetooth dongle
    Check LMP subversion by the following command
    $ hciconfig -a

    Now RTK chip can be recognized by the system and bluetooth function can be used.

-Uninstallation
   $ sudo make uninstall

===============	
  FILENAME LIST
===============
	
Chip		I/F 		FW/Config Path		FW Filename		Config Filename
		for
		BT driver
------------------------------------------------------------------------------------------------

RTL8822CE	USB		/lib/firmware/		rtl8822cu_fw		rtl8822cu_config

-----------------------------------------------------------------------------------------------
