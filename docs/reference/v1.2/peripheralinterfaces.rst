Peripheral Interfaces
#####################

The LimeSDR USB board's low speed interfaces are divided into FX3 and FPGA groups. The following block diagrams depict the main ICs, corresponding IC pin numbers, data buses and serial protocol addresses.

FX3
***

.. figure:: /images/LimeSDR-USB-FX3_v1.2_Low_Speed_Interfaces_BD.jpg
  :width: 600

  Figure 9. LimeSDR USB v1.2 FX3 peripheral interfaces block diagram

LimeSDR USB board peripherals are controlled via the USB interface. All commands that come from USB are first processed by the FX3 controller. I\ :sup:`2`\ C peripherals on the FX3_I2C bus (temperature sensor, port expander, clock generator) can be controlled directly. FX3_I2C is also connected to the FPGA.

FPGA
****

.. figure:: /images/LimeSDR-USB_v1.2_FPGA_Low_Speed_Interfaces_BD.jpg
  :width: 600

  Figure 10. LimeSDR USB v1.2 FPGA peripheral interfaces block diagram

FX3 hardware SPI cannot be used if the 32-bit GPIF interface is configured. If SPI devices (RFIC, phase detector, DAC) must be controlled by the FX3, it first transfers data to the I\ :sup:`2`\ C to SPI bridge. Depending on the required SPI slave device, there are several possibilities:

* Flash for FPGA gateware: the flash memory is switched from the FPGA to the I\ :sup:`2`\ C to SPI bridge using SPDT switch IC32. Then the flash content is updated and the flash memory is switched back to the FPGA. This is done to update the FPGA gateware in the flash memory.
* FPGA: the FPGA has its own SPI module and can be controlled as a regular SPI device. The FPGA SPI can be used to control FPGA modes, etc. The FPGA can also act as a bridge between BRDG_SPI and FPGA_SPI0 or FPGA_SPI1.
* RFIC, phase detector, DAC: to control a device on FPGA_SPI0 or FPGA_SPI1 from BRDG_SPI, the FPGA must be configured to select the corresponding slave device, and then it operates as a bridge. When the transaction with the slave is completed, the slave must be deselected.
* If the FX3 firmware flash memory content must be updated, the FX3 switches to 16-bit GPIF mode to access the flash content directly.
