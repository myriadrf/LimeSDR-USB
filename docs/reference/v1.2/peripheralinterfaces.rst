Peripheral Interfaces
#####################

The LimeSDR-USB board's low speed interfaces are divided into FX3 and FPGA groups. The following block diagrams depict the main ICs, corresponding IC pin numbers, data buses, and serial protocol addresse

FX3
***

.. figure:: /images/LimeSDR-USB-FX3_v1.2_Low_Speed_Interfaces_BD.jpg
  :width: 600

  Figure 9: LimeSDR USB v1.2 FX3 peripheral interfaces block diagram

LimeSDR-USB board peripherals are controlled via the USB interface. All commands that comes from USB are firstly processed by the FX3 controller. If an I²C peripheral (temperature sensor, port expander, clock generator) on FX3_I2C bus must be controlled this can be done directly. FX3_I2C is also connected to the FPGA.

FPGA
****

.. figure:: /images/LimeSDR-USB_v1.2_FPGA_Low_Speed_Interfaces_BD.jpg
  :width: 600

  Figure 10: LimeSDR USB v1.2 FPGA peripheral interfaces block diagram

FX3 hardware SPI cannot be used if the 32-bit GPIF interface is configured. If SPI (RFIC, frequency synthesiser, clock generator) devices must be controlled by FX3, firstly it transfers data to I²C-SPI bridge. Depending on required SPI slave device, there could several possibilities:

* Flash for FPGA gateware: using SPDT switch (IC32) flash memory is switched from FPGA to I²C-SPI bridge. Then flash content is updated and flash memory is switched back to FPGA. This is done to update the FPGA gateware in flash memory.
* FPGA: FPGA has its own SPI module and can be controlled as regular SPI device. By using FPGA SPI it is possible to control FPGA modes, etc. The FPGA can also act as bridge between BRDG_SPI and FPGA_SPI0 or FPGA_SPI1.
* RFIC, clock synthesiser, clock generator: to control a device on FPGA_SPI0 or FPGA_SPI1 from BRDG_SPI, the FPGA must be configured to select the corresponding slave device and then it operates as bridge. When the transaction with the slave is completed, the slave must be deselected.
* If FX3 firmware flash memory content must be updated, then FX3 switches to 16-bit GPIF mode to directly accesses flash content.