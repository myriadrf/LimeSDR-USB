JTAG
####

The JTAG connector J11 is used to debug the FPGA design and to load the bitstream into the FPGA and/or the flash memory. It is located on the top side of the PCB and connects to the programmer with a 10-pin, 0.05” pitch JTAG cable. JTAG connector pins, schematic signal names, FPGA interconnections and I/O standards are listed in Table 13.

.. list-table:: Table 13. JTAG connector J11 pins
  :header-rows: 1
  :stub-columns: 1

  * - Connector pin
    - Schematic signal name
    - FPGA pin
    - I/O standard
    - Comment
  * - 1
    - FPGA_JTAG_TCK
    - L2
    - 2.5 V
    - Test Clock
  * - 2
    - GND
    -
    -
    - Ground
  * - 3
    - FPGA_JTAG_TDO
    - L4
    - 2.5 V
    - Test Data Out
  * - 4
    - VCC2P5A_FPGA
    -
    -
    - Power (2.5 V)
  * - 5
    - FPGA_JTAG_TMS
    - L1
    - 3.3 V
    - Test Mode Select
  * - 6
    - N/C
    -
    -
    - No connection
  * - 7
    - N/C
    -
    -
    - No connection
  * - 8
    - N/C
    -
    -
    - No connection
  * - 9
    - FPGA_JTAG_TDI
    - L5
    - 2.5 V
    - Test Data In
  * - 10
    - GND
    -
    -
    - Ground
