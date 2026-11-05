FPGA
####

LimeSDR USB board features an Altera Cyclone IV FPGA `EP4CE40F23C8N`_ (IC8) in a 484-pin BGA package. The FPGA connects the host (via the USB 3.0 controller) to the LMS7002M RF transceiver, and also controls the RF network, the DDR2 memory, clock network, fan and peripheral devices. FPGA interfaces are listed in Table 2.

.. list-table:: Table 2. FPGA interfaces
   :header-rows: 1

   * - Interface
     - Connected to
     - Details
   * - GPIF II (32-bit)
     - USB 3.0 controller (IC13)
     - :doc:`usb`
   * - LimeLight, SPI
     - LMS7002M RF transceiver (IC1)
     - :doc:`digital`
   * - LMS I\ :sup:`2`\ C
     - LMS7002M RF transceiver (IC1), EEPROMs (IC2, IC3)
     - :doc:`digital`
   * - DDR2 (2x 16-bit)
     - DDR2 SDRAM (IC11, IC12)
     - :doc:`overview`
   * - Active serial
     - Configuration flash (IC10) via switch (IC9)
     - `Configuration`_
   * - SPI
     - VCTCXO DAC (IC22), phase detector (IC23)
     - :doc:`peripheralinterfaces`
   * - I\ :sup:`2`\ C
     - Main I\ :sup:`2`\ C bus (shared with IC13)
     - :doc:`peripheralinterfaces`
   * - SPI
     - I\ :sup:`2`\ C to SPI bridge (IC19, not fitted)
     - :doc:`peripheralinterfaces`
   * - RF control
     - RF switches (IC4–IC7), loopback attenuators
     - :doc:`rfcontrol`
   * - Clock
     - Clock generator (IC24), clock buffer (IC20)
     - :doc:`clock`
   * - GPIO, LEDs
     - J12, LEDS1, LEDS2
     - :doc:`gpio`, :doc:`leds`
   * - Fan control
     - Fan connectors (J13, J14), temperature sensor (IC16)
     - :doc:`tempsensor`
   * - Power source status
     - USB/external power source selection
     - :doc:`power`
   * - JTAG
     - J11
     - :doc:`jtag`

FPGA I/O bank 1 is powered from VCC3P3 (3.3 V). Banks 2, 3, 4 and 5, which connect to the USB 3.0 controller and the DDR2 memory, are powered from VCC1P8 (1.8 V). Banks 6, 7 and 8, which connect to the LMS7002M RF transceiver and the RF network, are powered from VDIO_LMS_FPGA. By default VDIO_LMS_FPGA is 2.5 V (R177 fitted), and it can be changed to 3.3 V by fitting R176 instead.

Configuration
=============

The FPGA is configured in Active Serial Standard mode (MSEL[3:0] = 0010) from the 16 Mb SPI configuration flash IC10 (M25P16). The flash is connected to the FPGA through the quad SPDT switch IC9 (TS3A5018). By default the switch connects the flash to the FPGA. To update the gateware, the USB 3.0 controller switches the flash to its own SPI bus (EXP_AS_SW, port expander IC17 output O7), see :doc:`peripheralinterfaces`. For flash programming, see :doc:`/user/flashing`.

Configuration signals:

* MSEL[3:0] (K20, L17, L18, M17) – set to 0010 by resistors R51–R60.
* DCLK (K2), DATA0 (K1), ASDO (D1), nCSO (E2) – SPI interface to the configuration flash IC10 via switch IC9.
* nCONFIG (K5) – pulled up to VCC3P3 by R105 (10 k\ |Omega|). The USB 3.0 controller can start reconfiguration through port expander IC17 (EXP_NCONFIG).
* nSTATUS (K6) – pulled up to VCC3P3 by R104 (10 k\ |Omega|), monitored by IC17 (EXP_NSTATUS).
* CONF_DONE (M18) – pulled up to VDIO_LMS_FPGA by R103 (10 k\ |Omega|), monitored by IC17 (EXP_CONF_DONE).
* nCE (L3) – connected to GND.

The FPGA can also be configured and debugged via JTAG connector J11, see :doc:`jtag`.

Version Straps
==============

Board hardware and BOM versions are set by straps connected to FPGA inputs, so they can be read by the gateware. Unconnected inputs are read as 1 using the FPGA internal pull-up. Version straps are listed in Table 3.

.. list-table:: Table 3. FPGA version straps
   :header-rows: 1

   * - Schematic signal name
     - FPGA pin
     - Connection
     - Value
   * - HW_VER0
     - F20
     - GND
     - 0
   * - HW_VER1
     - F19
     - GND
     - 0
   * - HW_VER2
     - G18
     - Not connected
     - 1
   * - HW_VER3
     - H17
     - GND
     - 0
   * - BOM_VER0
     - P1
     - GND via R42 (0 |Omega|)
     - 0
   * - BOM_VER1
     - R2
     - GND via R43 (0 |Omega|)
     - 0
   * - BOM_VER2
     - U2
     - GND via R44 (0 |Omega|)
     - 0
   * - BOM_VER3
     - U1
     - GND via R45 (0 |Omega|)
     - 0

On LimeSDR USB v1.4, HW_VER = 4 (0100) and BOM_VER = 0 (0000).

.. _EP4CE40F23C8N: https://www.altera.com/products/fpga/cyclone/iv/e/ep4ce40-f23/EP4CE40F23C8N
