RF Transceiver Digital
######################

The `LMS7002M`_ digital interface and control signals are described below.

Digital Interface
*****************

LMS7002 is using data bus LMS_DIQ1_D[11:0] and LMS_DIQ2_D[11:0], LMS_ENABLE_IQSEL1 and LMS_ENABLE_IQSEL2, LMS_FCLK1 and LMS_FCLK2, LMS_MCLK1 and LMS_MCLK2 signals to transfer data to/from FPGA. Indexes 1 and 2 indicate transceiver digital data PORT-1 or PORT-2. Any of these ports can be used to transmit or receive data.

By default PORT-1 is selected as transmitter port and PORT-2 is selected as receiver port. The FCLK# is input clock and MCLK# is output clock for the LMS7002M transceiver. TXNRX signals are used to indicate ports direction. Please refer to `LMS7002M transceiver datasheet`_ page 12-13 for the LMS7002M interface timing.

Control
*******

These signals are used for the following functions within the LMS7002 RFIC:

* LMS_RXEN, LMS_TXEN – receiver and transmitter enable/disable signals connected to FPGA Bank 8 (VDIO_LMS_FPGA; 3.3V).
* LMS_RESET – LMS7002M reset connected to FPGA Bank 7 (VDIO_LMS_FPGA; 3.3V).
* SPI Interface: LMS7002M transceiver is configured via 4-wire SPI interface; FPGA_SPI0_SCLK, FPGA_SPI0_MOSI, FPGA_SPI0_MISO, FPGA_SPI0_LMS_SS. The SPI interface controlled from FPGA Bank 8 (VDIO_LMS_FPGA; 3.3V).
* Main I2C Interface: used to control external clock synthesizer, port expander, temperature sensor, EEPROM, I2C-SPI bridge on LimeSDR-USB board. The signals FX3_I2C_SCL, FX3_I2C_SDA connected to FX3. Also these I2C lines are connected via 0R resistors to FPGA Bank 8 (VCC3P3; 3.3V) lines FPGA_I2C_SCL, FPGA_I2C_SDA.
* LMS I2C Interface: can be used for LMS EEPROM content modifying or for debug purposes. The signals LMS_I2C_SCL, LMS_I2C_DATA connected to FPGA Bank 8 (VDIO_LMS_FPGA; 3.3V).

