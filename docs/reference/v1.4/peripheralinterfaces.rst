Peripheral Interfaces
#####################

LimeSDR USB board peripheral interfaces are divided into FX3 and FPGA groups that are presented in Figure 9 and Figure 10. The latter block diagrams depict the main ICs, corresponding IC pin numbers, data buses and serial protocol addresses.

.. figure:: /images/LimeSDR-USB_1v4_FX3_Low_Speed_Interfaces_BD.png
  :width: 600

  Figure 9: LimeSDR USB v1.4 FX3 peripheral interfaces block diagram

LimeSDR USB board peripherals are controlled via USB interface. All commands that comes from USB are firstly processed by FX3 controller. If I2C peripheral (temperature sensor, port expander, clock generator) on FX3_I2C bus must be controlled this can be done directly. FX3_I2C is also connected to FPGA.

.. figure:: /images/LimeSDR-USB_1v4_FPGA_Low_Speed_Interfaces_BD.png
  :width: 600

  Figure 10: LimeSDR USB v1.4 FPGA peripheral interfaces block diagram

There are several SPI interfaces with their slave devices:

* FX3_SPI: FX3 hardware SPI cannot be used if 32-bit GPIF interface is configured. If any slave device on this bus must be accessed then FX3 switches to 16-bit GPIF. This bus has these slave devices:
 
 * FX3 firmware Flash
 * FPGA configuration flash: using switch (IC9) flash memory is switched from FPGA to FX3_SPI BUS. Then flash content is updated and flash memory is switch back to FPGA. This is done when needs to update FPGA gateware in flash memory.

* FPGA_SPI0, FPGA_SPI1: these SPI interfaces are connected to FPGA and slave devices can be accessed by transferring data to internal FPGA NIOS CPU. This bus has these slave devices:

 * RFIC (FPGA_SPI0)
 * Phase detector (FPGA_SPI1)
 * DAC (FPGA_SPI1)

* Internal FPGA SPI module: FPGA has its own SPI module and can be controlled as regular SPI device. By using FPGA SPI it is possible to control FPGA modes etc.
* BRDG_SPI: this is alternative SPI interface for FX3 and currently is not used.

SPI interfaces, connected to the FPGA are listed in the tables bellow.

.. list-table:: Table 8. FPGA_SPI0 interface pins
   :header-rows: 1

   * - Schematic net name
     - FPGA pin
     - I/O standard
     - Comment
   * - FPGA_SPI0_SCLK
     - E6
     - 2.5V
     - Serial Clock (FPGA output)
   * - FPGA_SPI0_MOSI
     - D7
     - 2.5V
     - Data (FPGA output)
   * - FPGA_SPI0_MISO
     - C8
     - 2.5V
     - Data (FPGA input)
   * - FPGA_SPI0_LMS_SS
     - D10
     - 2.5V
     - IC1 (LMS7002M) SPI slave select

.. list-table:: Table 9. FPGA_SPI1 interface pins
   :header-rows: 1

   * - Schematic net name
     - FPGA pin
     - I/O standard
     - Comment
   * - FPGA_SPI0_SCLK
     - E6
     - 2.5V
     - Serial Clock (FPGA output)
   * - FPGA_SPI0_MOSI
     - D7
     - 2.5V
     - Data (FPGA output)
   * - FPGA_SPI0_MISO
     - C8
     - 2.5V
     - Data (FPGA input)
   * - FPGA_SPI0_LMS_SS
     - D10
     - 2.5V
     - IC1 (LMS7002M) SPI slave select

FX3 MCU features I2C interface. Slave devices and related information, connected to this interface, are listed in the table bellow.

.. list-table:: Table 10. FX3 I2C interface pins
   :header-rows: 1
  
   * - I2C slave device reference
     - I2C slave device
     - I2C slave address
     - I/O standard
     - Comment
   * - IC9
     - Temperature sensor
     - 1001000RW
     - 3.3V
     - LM75
   * - IC12
     - I2C SPI Bridge
     - 0101000RW
     - 3.3V
     - SC18IS602B
   * - IC10
     - I2C Port Expander
     - 1101101RW
     - 3.3V
     - MAX7322
   * - IC11
     - EEPROM
     - 1010000RW
     - 3.3V
     - 24FC64F
   * - IC17
     - Clock generator
     - 1100000RW
     - 3.3V
     - Si5351C