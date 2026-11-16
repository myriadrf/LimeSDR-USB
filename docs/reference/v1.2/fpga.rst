FPGA
####

LimeSDR USB board features an Altera Cyclone IV FPGA `EP4CE40F23C8N`_ (IC31) in a 484-pin BGA package. The FPGA connects the host (via the USB 3.0 controller) to the LMS7002M RF transceiver, and also controls the DDR2 memory, clock network, fan and peripheral devices. FPGA interfaces are listed in Table 2.

.. list-table:: Table 2. FPGA interfaces
   :header-rows: 1

   * - Interface
     - Connected to
     - Details
   * - GPIF II (32-bit)
     - USB 3.0 controller (IC6)
     - :doc:`usb`
   * - LimeLight, SPI
     - LMS7002M RF transceiver (IC1)
     - :doc:`digital`
   * - LMS I\ :sup:`2`\ C
     - LMS7002M RF transceiver (IC1), EEPROMs (IC2, IC3)
     - :doc:`digital`
   * - DDR2 (2x 16-bit)
     - DDR2 SDRAM (IC4, IC5)
     - :doc:`overview`
   * - Active serial
     - Configuration flash (IC33) via switch (IC32)
     - `Configuration`_
   * - SPI
     - VCTCXO DAC (IC15), phase detector (IC16)
     - :doc:`peripheralinterfaces`
   * - I\ :sup:`2`\ C
     - Main I\ :sup:`2`\ C bus (shared with IC6)
     - :doc:`peripheralinterfaces`
   * - SPI
     - I\ :sup:`2`\ C to SPI bridge (IC12)
     - :doc:`peripheralinterfaces`
   * - Clock
     - Clock generator (IC17), clock buffer (IC13)
     - :doc:`clock`
   * - GPIO, LEDs
     - J18, LEDS1
     - :doc:`overview`, :doc:`leds`
   * - Fan control
     - Fan connectors (J19, J20), temperature sensor (IC9)
     - :doc:`overview`
   * - JTAG
     - J17
     - :doc:`overview`

FPGA I/O bank 1 is powered from VCC3P3 (3.3 V). Banks 2, 3, 4 and 5, which connect to the USB 3.0 controller and the DDR2 memory, are powered from VCC1P8 (1.8 V). Banks 6, 7 and 8, which connect to the LMS7002M RF transceiver, are powered from VDIO_LMS_FPGA. By default VDIO_LMS_FPGA is 3.3 V (R123 fitted), and it can be changed to 2.5 V by fitting R125 instead.

Configuration
=============

The FPGA is configured in Active Serial Standard mode (MSEL[3:0] = 0010) from the 16 Mb SPI configuration flash IC33 (M25P16). The flash is connected to the FPGA through the quad SPDT switch IC32 (TS3A5018). By default the switch connects the flash to the FPGA. To update the gateware, the flash is switched to the I\ :sup:`2`\ C to SPI bridge IC12 (EXP_AS_SW, port expander IC10 output O7), see :doc:`peripheralinterfaces`. For flash programming, see :doc:`/user/flashing`.

Configuration signals:

* MSEL[3:0] (K20, L17, L18, M17) – set to 0010 by resistors R168–R179.
* DCLK (K2), DATA0 (K1), ASDO (D1), nCSO (E2) – SPI interface to the configuration flash IC33 via switch IC32.
* nCONFIG (K5) – pulled up to VCC3P3 by R66 (10 k\ |Omega|). The USB 3.0 controller can start reconfiguration through port expander IC10 (EXP_NCONFIG).
* nSTATUS (K6) – pulled up to VCC3P3 by R65 (10 k\ |Omega|), monitored by IC10 (EXP_NSTATUS).
* CONF_DONE (M18) – pulled up to VDIO_LMS_FPGA by R64 (10 k\ |Omega|), monitored by IC10 (EXP_CONF_DONE).
* nCE (L3) – connected to GND.

The FPGA can also be configured and debugged via JTAG connector J17.

.. note::
   LimeSDR USB v1.2 has no hardware or BOM version straps.

.. _EP4CE40F23C8N: https://www.altera.com/products/fpga/cyclone/iv/e/ep4ce40-f23/EP4CE40F23C8N
