USB 3.0 Controller
##################

Software controls the LimeSDR-USB board via the USB 3.0 microcontroller (CYUSB3014). The data transfer to/from the board, SPI communication, and FPGA configuration are all done via the USB 3.0 controller.

* FX3_DQ[31:0] – FX3 32-bit GPIF data interface is connected to Cyclone IV 1.8V Bank 5.
* FX3_CTL[8:0], [12:11] – FX3 GPIF interface control signals.
* FX3_PCLK – GPIF interface clock
* GPIO[26:25] – FX3 (USB) status LED (LED5).
* FX3 SPI interface – program IC8 flash memory, boot from IC8 flash memory.
* FX3 I²C bus – connected to the I2C to SPI bridge IC12, I2C port expander IC10, temperature sensor IC9 and EEPROM memory IC11.
* PMODE[2:0] – boot options, by default boot from SPI and USB boot is enabled. If J13 jumper is present FX3 will boot from IC8 flash memory if correct firmware exists.
* SW1 – resets FX3
* J12 – FX3 JTAG programming/debugging pin header.

