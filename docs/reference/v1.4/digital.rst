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

* LMS_RXEN, LMS_TXEN – receiver and transmitter enable/disable signals connected to FPGA Bank 8 (VDIO_LMS_FPGA, 2.5 V).
* LMS_RESET – LMS7002M reset connected to FPGA Bank 7 (VDIO_LMS_FPGA, 2.5 V).
* SPI interface: the LMS7002M transceiver is configured via a 4-wire SPI interface: FPGA_SPI0_SCLK, FPGA_SPI0_MOSI, FPGA_SPI0_MISO, FPGA_SPI0_LMS_SS. The SPI interface is controlled from FPGA Bank 8 (VDIO_LMS_FPGA, 2.5 V).
* Main I\ :sup:`2`\ C interface: used to control the clock generator, port expander, temperature sensor, EEPROM and I\ :sup:`2`\ C to SPI bridge on the LimeSDR USB board. The signals FX3_I2C_SCL and FX3_I2C_SDA are connected to the FX3. These I\ :sup:`2`\ C lines are also connected via 0 |Omega| resistors to FPGA Bank 1 (VCC3P3, 3.3 V) lines FPGA_I2C_SCL and FPGA_I2C_SDA.
* LMS I\ :sup:`2`\ C interface: can be used for LMS EEPROM content modification or for debug purposes. The signals LMS_I2C_SCL and LMS_I2C_SDA are connected to the FPGA (VDIO_LMS_FPGA, 2.5 V).

LMS7002M Pins
*************

.. list-table:: Table 4. LMS7002M RF transceiver digital interface pins
   :header-rows: 1
   :stub-columns: 1

   * - LMS7002M pin
     - LMS7002M reference
     - Schematic signal name
     - FPGA pin
     - FPGA pin I/O standard
     - Comment
   * - AM24
     - xoscin_rx
     - RxPLL_CLK
     -
     - 3.3 V
     - Connected to 30.72 MHz clock
   * - P34
     - MCLK2
     - LMS_MCLK2
     - B11
     - 2.5 V
     -
   * - R29
     - FCLK2
     - LMS_FCLK2
     - E5
     - 2.5 V
     -
   * - U31
     - TXNRX2
     - LMS_TXNRX2
     - B8
     - 2.5 V
     -
   * - V34
     - RXEN
     - LMS_RXEN
     - C3
     - 2.5 V
     -
   * - R33
     - ENABLE_IQSEL2
     - LMS_ENABLE_IQSEL2
     - C7
     - 2.5 V
     -
   * - H30
     - DIQ2_D0
     - LMS_DIQ2_D0
     - B7
     - 2.5 V
     -
   * - J31
     - DIQ2_D1
     - LMS_DIQ2_D1
     - B6
     - 2.5 V
     -
   * - K30
     - DIQ2_D2
     - LMS_DIQ2_D2
     - B4
     - 2.5 V
     -
   * - K32
     - DIQ2_D3
     - LMS_DIQ2_D3
     - B3
     - 2.5 V
     -
   * - L31
     - DIQ2_D4
     - LMS_DIQ2_D4
     - A10
     - 2.5 V
     -
   * - K34
     - DIQ2_D5
     - LMS_DIQ2_D5
     - A9
     - 2.5 V
     -
   * - M30
     - DIQ2_D6
     - LMS_DIQ2_D6
     - A8
     - 2.5 V
     -
   * - M32
     - DIQ2_D7
     - LMS_DIQ2_D7
     - A7
     - 2.5 V
     -
   * - N31
     - DIQ2_D8
     - LMS_DIQ2_D8
     - A6
     - 2.5 V
     -
   * - N33
     - DIQ2_D9
     - LMS_DIQ2_D9
     - A5
     - 2.5 V
     -
   * - P30
     - DIQ2_D10
     - LMS_DIQ2_D10
     - A4
     - 2.5 V
     -
   * - P32
     - DIQ2_D11
     - LMS_DIQ2_D11
     - A11
     - 2.5 V
     -
   * - E5
     - xoscin_tx
     - TxPLL_CLK
     -
     - 3.3 V
     - Connected to 30.72 MHz clock
   * - AB34
     - MCLK1
     - LMS_MCLK1
     - G21
     - 2.5 V
     -
   * - AA33
     - FCLK1
     - LMS_FCLK1
     - B20
     - 2.5 V
     -
   * - V32
     - TXNRX1
     - LMS_TXNRX1
     - B9
     - 2.5 V
     -
   * - U29
     - TXEN
     - LMS_TXEN
     - B10
     - 2.5 V
     -
   * - Y32
     - ENABLE_IQSEL1
     - LMS_ENABLE_IQSEL1
     - C4
     - 2.5 V
     -
   * - AG31
     - DIQ1_D0
     - LMS_DIQ1_D0
     - B17
     - 2.5 V
     -
   * - AF30
     - DIQ1_D1
     - LMS_DIQ1_D1
     - B16
     - 2.5 V
     -
   * - AF34
     - DIQ1_D2
     - LMS_DIQ1_D2
     - B15
     - 2.5 V
     -
   * - AE31
     - DIQ1_D3
     - LMS_DIQ1_D3
     - B14
     - 2.5 V
     -
   * - AD30
     - DIQ1_D4
     - LMS_DIQ1_D4
     - B13
     - 2.5 V
     -
   * - AC29
     - DIQ1_D5
     - LMS_DIQ1_D5
     - C13
     - 2.5 V
     -
   * - AE33
     - DIQ1_D6
     - LMS_DIQ1_D6
     - A18
     - 2.5 V
     -
   * - AD32
     - DIQ1_D7
     - LMS_DIQ1_D7
     - A17
     - 2.5 V
     -
   * - AC31
     - DIQ1_D8
     - LMS_DIQ1_D8
     - A16
     - 2.5 V
     -
   * - AC33
     - DIQ1_D9
     - LMS_DIQ1_D9
     - A15
     - 2.5 V
     -
   * - AB30
     - DIQ1_D10
     - LMS_DIQ1_D10
     - A14
     - 2.5 V
     -
   * - AB32
     - DIQ1_D11
     - LMS_DIQ1_D11
     - A13
     - 2.5 V
     -
   * - U33
     - CORE_LDO_EN
     - LMS_CORE_LDO_EN
     - B18
     - 2.5 V
     -
   * - E27
     - RESET
     - LMS_RESET
     - C6
     - 2.5 V
     -
   * - D28
     - SEN
     - FPGA_SPI0_LMS_SS
     - D10
     - 2.5 V
     - SPI interface
   * - C29
     - SCLK
     - FPGA_SPI0_SCLK
     - E6
     - 2.5 V
     - SPI interface
   * - F30
     - SDIO
     - FPGA_SPI0_MOSI
     - D7
     - 2.5 V
     - SPI interface
   * - F28
     - SDO
     - FPGA_SPI0_MISO
     - C8
     - 2.5 V
     - SPI interface
   * - D26
     - SDA
     - LMS_I2C_SDA
     - C21
     - 2.5 V
     - Also connected to EEPROM
   * - C27
     - SCL
     - LMS_I2C_SCL
     - C17
     - 2.5 V
     - Also connected to EEPROM
