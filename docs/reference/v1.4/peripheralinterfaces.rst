Peripheral Interfaces
#####################

LimeSDR USB board peripheral interfaces are divided into FX3 and FPGA groups, which are presented in Figure 9 and Figure 10. These block diagrams depict the main ICs, corresponding IC pin numbers, data buses and serial protocol addresses.

.. figure:: /images/LimeSDR-USB_1v4_FX3_Low_Speed_Interfaces_BD.png
  :width: 600

  Figure 9. LimeSDR USB v1.4 FX3 peripheral interfaces block diagram

LimeSDR USB board peripherals are controlled via the USB interface. All commands that come from USB are first processed by the FX3 controller. I\ :sup:`2`\ C peripherals on the FX3_I2C bus (temperature sensor, port expander, clock generator) can be controlled directly. FX3_I2C is also connected to the FPGA.

.. figure:: /images/LimeSDR-USB_1v4_FPGA_Low_Speed_Interfaces_BD.png
  :width: 600

  Figure 10. LimeSDR USB v1.4 FPGA peripheral interfaces block diagram

There are several SPI interfaces with their slave devices:

* FX3_SPI: FX3 hardware SPI cannot be used if the 32-bit GPIF interface is configured. If any slave device on this bus must be accessed, the FX3 switches to 16-bit GPIF. This bus has these slave devices:

  * FX3 firmware flash
  * FPGA configuration flash: the flash memory is switched from the FPGA to the FX3_SPI bus using switch IC9. Then the flash content is updated and the flash memory is switched back to the FPGA. This is done when the FPGA gateware in the flash memory needs to be updated.

* FPGA_SPI0, FPGA_SPI1: these SPI interfaces are connected to the FPGA, and slave devices can be accessed by transferring data to the internal FPGA NIOS CPU. These buses have these slave devices:

  * RFIC (FPGA_SPI0)
  * Phase detector (FPGA_SPI1)
  * DAC (FPGA_SPI1)

* Internal FPGA SPI module: the FPGA has its own SPI module and can be controlled as a regular SPI device. The FPGA SPI can be used to control FPGA modes, etc.
* BRDG_SPI: an alternative SPI interface for the FX3 through the I\ :sup:`2`\ C to SPI bridge (IC19, not fitted). It is currently not used.

SPI interfaces connected to the FPGA are listed in Table 10 and Table 11.

.. list-table:: Table 10. FPGA_SPI0 interface pins
   :header-rows: 1

   * - Schematic net name
     - FPGA pin
     - I/O standard
     - Comment
   * - FPGA_SPI0_SCLK
     - E6
     - 2.5 V
     - Serial Clock (FPGA output)
   * - FPGA_SPI0_MOSI
     - D7
     - 2.5 V
     - Data (FPGA output)
   * - FPGA_SPI0_MISO
     - C8
     - 2.5 V
     - Data (FPGA input)
   * - FPGA_SPI0_LMS_SS
     - D10
     - 2.5 V
     - IC1 (LMS7002M) SPI slave select

.. list-table:: Table 11. FPGA_SPI1 interface pins
   :header-rows: 1

   * - Schematic net name
     - FPGA pin
     - I/O standard
     - Comment
   * - FPGA_SPI1_SCLK
     - K8
     - 3.3 V
     - Serial Clock (FPGA output)
   * - FPGA_SPI1_MOSI
     - L8
     - 3.3 V
     - Data (FPGA output)
   * - FPGA_SPI1_DAC_SS
     - J3
     - 3.3 V
     - IC22 (DAC) SPI slave select
   * - FPGA_SPI1_ADF_SS
     - J5
     - 3.3 V
     - IC23 (ADF4002) SPI slave select
   * - ADF_MUXOUT
     - J2
     - 3.3 V
     - IC23 (ADF4002) MUXOUT (FPGA input)

The FX3 MCU features an I\ :sup:`2`\ C interface. Slave devices connected to this interface are listed in Table 12.

.. list-table:: Table 12. FX3 I\ :sup:`2`\ C interface devices
   :header-rows: 1

   * - I\ :sup:`2`\ C slave device reference
     - I\ :sup:`2`\ C slave device
     - I\ :sup:`2`\ C slave address
     - I/O standard
     - Comment
   * - IC16
     - Temperature sensor
     - 1001000RW
     - 3.3 V
     - LM75
   * - IC19
     - I\ :sup:`2`\ C to SPI bridge
     - 0101000RW
     - 3.3 V
     - SC18IS602B (not fitted)
   * - IC17
     - I\ :sup:`2`\ C port expander
     - 1101101RW
     - 3.3 V
     - MAX7322
   * - IC18
     - EEPROM
     - 1010000RW
     - 3.3 V
     - 24FC64F
   * - IC24
     - Clock generator
     - 1100000RW
     - 3.3 V
     - Si5351C
