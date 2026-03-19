Flashing
########

From time to time it may be necessary to reprogram the FPGA configuration FLASH memory on the LimeSDR USB board. This may be required when upgrading to a newer gateware version, or in case of corrupted FLASH memory.

It should usually be possible to program the LimeSDR USB board using software only, with the device connected via USB interface. However, in case of corrupted FLASH memory or other issues, JTAG programming may be required.

To start with download a `pre-compiled programming file`_ (.rbf). Then proceed to use the pure software programming method described below, unless it has been determined that JTAG programming is necessary.

Software Programming
********************

This section describes how to program the FPGA configuration FLASH memory on the LimeSDR USB board using Lime software.

Software
========

The :external+suiteng:ref:`Lime Suite NG software <index:introduction>` is required for programming the FPGA configuration FLASH memory.

Programming via the GUI
=======================

The programming options can be accessed in the :code:`limeGUI` application under Modules->Programming.

To program:

#. Set Programming mode to FPGA/FLASH.
#. Select the image .rbf file you wish to use by pressing Open. 
#. Initiate programming by pressing Program.

.. figure:: /images/LimeSDR-USV_v1.4_PROGGUI.png
  :width: 600

  Figure 9: Programming via the GUI

Programming via the CLI
=======================

Programming can also be achieved using the CLI application :code:`limeFLASH` that is built alongside limeGUI.

The relevant options:

* device - to choose LimeSDR USB type :code:`LimeSDR-USB`.
* target - to set programming mode type :code:`FPGA/FLASH` and add location to .bin file. 

..  code-block:: shell
    :caption: Programming via the CLI

    limeFLASH -d LimeSDR-USB -t FPGA/FLASH <PATH_TO_FILE/LimeSDR-USB_lms7_trx_HW_1.4.rbf>

.. note::
  :code:`<PATH_TO_FILE/LimeSDR-USB_lms7_trx_HW_1.4.rbf>` should be replaced by the actual path to your chosen .rbf file

.. _pre-compiled programming file: https://github.com/myriadrf/LimeSDR-USB_GW/blob/master/output_files/LimeSDR-USB_lms7_trx_HW_1.4.rbf





