RF Transceiver Digital
######################

The `LMS7002M`_ digital interface and control signals are described below.

Digital Interface
*****************

The LMS7002M uses data buses LMS_DIQ1_D[11:0] and LMS_DIQ2_D[11:0], LMS_ENABLE_IQSEL1 and LMS_ENABLE_IQSEL2, LMS_FCLK1 and LMS_FCLK2, LMS_MCLK1 and LMS_MCLK2 signals to transfer data to/from the FPGA. Indices 1 and 2 indicate transceiver digital data PORT-1 or PORT-2. Any of these ports can be used to transmit or receive data.

By default, PORT-1 is selected as the transmitter port and PORT-2 is selected as the receiver port. FCLK# is the input clock and MCLK# is the output clock of the LMS7002M transceiver. TXNRX signals are used to indicate the port direction. Please refer to the `LMS7002M transceiver datasheet`_ pages 12–13 for the LMS7002M interface timing.

Control
*******

These signals are used for the following functions within the LMS7002M RFIC:

* LMS_RXEN, LMS_TXEN – receiver and transmitter enable/disable signals connected to FPGA Bank 8 (VDIO_LMS_FPGA, 3.3 V).
* LMS_RESET – LMS7002M reset connected to FPGA Bank 7 (VDIO_LMS_FPGA, 3.3 V).
* SPI interface: the LMS7002M transceiver is configured via a 4-wire SPI interface: FPGA_SPI0_SCLK, FPGA_SPI0_MOSI, FPGA_SPI0_MISO, FPGA_SPI0_LMS_SS. The SPI interface is controlled from FPGA Bank 8 (VDIO_LMS_FPGA, 3.3 V).
* Main I\ :sup:`2`\ C interface: used to control the clock generator, port expander, temperature sensor, EEPROM and I\ :sup:`2`\ C to SPI bridge on the LimeSDR USB board. The signals FX3_I2C_SCL and FX3_I2C_SDA are connected to the FX3. These I\ :sup:`2`\ C lines are also connected via 0 |Omega| resistors to FPGA Bank 1 (VCC3P3, 3.3 V) lines FPGA_I2C_SCL and FPGA_I2C_SDA.
* LMS I\ :sup:`2`\ C interface: can be used for LMS EEPROM content modification or for debug purposes. The signals LMS_I2C_SCL and LMS_I2C_SDA are connected to the FPGA (VDIO_LMS_FPGA, 3.3 V).

