JTAG
####

To debug FPGA design, flash bitstream to FPGA and/or Flash memory JTAG J11 connector is used. It is located on the PCB top side and attaches to the programmer using 10-pin, 0.05” spaced JTAG connector. JTAG connector pins, schematic signal names, FPGA interconnections and I/O standards are listed in Table 11.

.. list-table:: Table 11. JTAG connector J11 pins
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
    - 2.5V
    - Test Clock
  * - 2
    - GND
    - 
    - 
    - Ground
  * - 3
    - FPGA_JTAG_TDO
    - L4
    - 2.5V
    - Test Data Out
  * - 4
    - VCC2P5A_FPGA
    -
    -
    - Power (2.5V)
  * - 5
    - FPGA_JTAG_TMS
    - L1
    - 3.3V
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
    - 2.5V
    - Test Data In
  * - 10
    - GND
    -
    -
    - Ground
