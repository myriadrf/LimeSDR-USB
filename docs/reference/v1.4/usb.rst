USB 3.0 Controller
##################

Software controls LimeSDR USB board via the USB3 microcontroller (CYUSB3014 (FX3)). The data transfer to/from the board, SPI communication, FPGA configuration is done via the USB3 controller. The controller signals description showed below:

* FX3_DQ[31:0] – FX3 32-bit GPIF data interface is connected to Cyclone IV 1.8V Bank 5.
* FX3_CTL[8:0], [12:11] – FX3 GPIF interface control signals.
* FX3_PCLK – GPIF interface clock. Clock from FX3 is fed to FPGA.
* FX3_SPI interface is used to program FX3 firmware flash or FPGA configuration flash memory.
* FX3 I2C bus is connected to the main I2C bus.
* PMODE[2:0] – boot options, by default boot from SPI and USB boot is enabled. If J17 jumper is present or R122 is soldered FX3 will boot from IC8 flash memory if correct firmware exists.
* SW1 – resets FX3
* J16 – FX3 JTAG programming/debugging pin header.

.. list-table:: Table 6. USB3 controller (FX3) pins
   :header-rows: 1

   * - FX3
     - FX3 reference
     - Schematic signal name
     - FPGA pin
     - FPGA pin I/O standard
     - Comment
   * - F10
     - GPIO0
     - FX3_DQ0
     - M19
     - 1.8V
     -
   * - F9
     - GPIO1
     - FX3_DQ1
     - AA21
     - 1.8V
     -
   * - F7
     - GPIO2
     - FX3_DQ2
     - Y22
     - 1.8V
     -
   * - G10
     - GPIO3
     - FX3_DQ3
     - Y21
     - 1.8V
     -
   * - G9
     - GPIO4
     - FX3_DQ4
     - W22
     - 1.8V
     -
   * - F8
     - GPIO5
     - FX3_DQ5
     - W21
     - 1.8V
     -
   * - H10
     - GPIO6
     - FX3_DQ6
     - W20
     - 1.8V
     -
   * - H9
     - GPIO7
     - FX3_DQ7
     - V22
     - 1.8V
     -
   * - J10
     - GPIO8
     - FX3_DQ8
     - V21
     - 1.8V
     -
   * - J9
     - GPIO9
     - FX3_DQ9
     - U22
     - 1.8V
     -
   * - K11
     - GPIO10
     - FX3_DQ10
     - U21
     - 1.8V
     -
   * - L10
     - GPIO11
     - FX3_DQ11
     - U20
     - 1.8V
     -
   * - K10
     - GPIO12
     - FX3_DQ12
     - U19
     - 1.8V
     -
   * - K9
     - GPIO13
     - FX3_DQ13
     - M22
     - 1.8V
     -
   * - J8
     - GPIO14
     - FX3_DQ14
     - M21
     - 1.8V
     -
   * - G8
     - GPIO15
     - FX3_DQ15
     - R22
     - 1.8V
     -
   * - J6
     - GPIO16
     - FX3_PCLK
     - T21
     - 1.8V
     -
   * - K8
     - GPIO17
     - FX3_CTL0
     - L6
     - 1.8V
     -
   * - K7
     - GPIO18
     - FX3_CTL1
     - L7
     - 1.8V
     -
   * - J7
     - GPIO19
     - FX3_CTL2
     - M1
     - 1.8V
     -
   * - H7
     - GPIO20
     - FX3_CTL3
     - M2
     - 1.8V
     -
   * - G7
     - GPIO21
     - FX3_CTL4
     - M3
     - 1.8V
     -
   * - G6
     - GPIO22
     - FX3_CTL5
     - M4
     - 1.8V
     -
   * - K6
     - GPIO23
     - FX3_CTL6
     - M6
     - 1.8V
     -
   * - H8
     - GPIO24
     - FX3_CTL7
     - M7
     - 1.8V
     -
   * - G5
     - GPIO25
     - FX3_CTL8
     - M8
     - 1.8V
     -
   * - H6
     - GPIO26
     - FX3_DCTL9
     - P9
     - 1.8V
     -
   * - K5
     - GPIO27
     - FX3_DCTL10
     - N7
     - 1.8V
     -
   * - J5
     - GPIO28
     - FX3_CTL11
     - N5
     - 1.8V
     -
   * - H5
     - GPIO29
     - FX3_CTL12
     - N6
     - 1.8V
     -
   * - G4
     - GPIO30
     - FX3_PMODE0
     - 
     - 1.8V
     -
   * - H4
     - GPIO31
     - FX3_PMODE1
     - 
     - 1.8V
     -
   * - L4
     - GPIO32
     - FX3_PMODE2
     - 
     - 1.8V
     -
   * - K2
     - GPIO33
     - FX3_DQ16
     - R21
     - 1.8V
     -
   * - J4
     - GPIO34
     - FX3_DQ17
     - R20
     - 1.8V
     -
   * - K1
     - GPIO35
     - FX3_DQ18
     - R19
     - 1.8V
     -
   * - J2
     - GPIO36
     - FX3_DQ19
     - R18
     - 1.8V
     -
   * - J3
     - GPIO37
     - FX3_DQ20
     - P22
     - 1.8V
     -
   * - J1
     - GPIO38
     - FX3_DQ21
     - P21
     - 1.8V
     -
   * - H2
     - GPIO39
     - FX3_DQ22
     - M20
     - 1.8V
     -
   * - H3
     - GPIO40
     - FX3_DQ23
     - P16
     - 1.8V
     -
   * - F4
     - GPIO41
     - FX3_DQ24
     - P15
     - 1.8V
     -
   * - G2
     - GPIO42
     - FX3_DQ25
     - N22
     - 1.8V
     -
   * - G3
     - GPIO43
     - FX3_DQ26
     - N21
     - 1.8V
     -
   * - F3
     - GPIO44
     - FX3_DQ27
     - N20
     - 1.8V
     -
   * - F2
     - GPIO45
     - BRDG_INT_LS
     - 
     - 1.8V
     - Connected to I2C-SPI bridge
   * - F5
     - GPIO46
     - FX3_DQ28
     - N19
     - 1.8V
     -
   * - E1
     - GPIO47
     - FX3_DQ29
     - N18
     - 1.8V
     -
   * - E5
     - GPIO48
     - FX3_DQ30
     - N17
     - 1.8V
     -
   * - E4
     - GPIO49
     - FX3_DQ31
     - N16
     - 1.8V
     -
   * - D1
     - GPIO50
     - 
     - 
     - 1.8V
     -
   * - D2
     - GPIO51
     - 
     - 
     - 1.8V
     -
   * - D3
     - GPIO52
     - 
     - 
     - 1.8V
     -
   * - D4
     - GPIO53
     - FX3_SPI_SCLK
     - 
     - 3.3V
     -
   * - C1
     - GPIO54
     - FX3_SPI_FLASH_SS
     - 
     - 3.3V
     -
   * - C2
     - GPIO55
     - FX3_SPI_MISO
     - 
     - 3.3V
     -
   * - D5
     - GPIO56
     - FX3_SPI_MOSI
     - 
     - 3.3V
     -
   * - C4
     - GPIO57
     - 
     - 
     - 3.3V
     -
   * - D9
     - I2C_GPIO58
     - FX3_I2C_SCL/FPGA_I2C_SCL
     - H7
     - 3.3V
     - Connected to I2C-SPI bridge
   * - D10
     - I2C_GPIO59
     - FX3_I2C_SDA/FPGA_I2C_SDA
     - J7
     - 3.3V
     - Connected to I2C-SPI bridge