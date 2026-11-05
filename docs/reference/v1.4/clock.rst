Clock Distribution
##################

The LimeSDR USB board clock distribution block diagram is presented in Figure 7.

.. figure:: /images/LimeSDR-USB_1v4_diagrams_clock.png
  :width: 600

  Figure 7. LimeSDR USB v1.4 board clock distribution block diagram

The LimeSDR USB board has an onboard 30.72 MHz VCTCXO (precision: ±1 ppm initial, ±4 ppm stable), which is the reference clock for the LMS7002M PLLs.

The VCTCXO can be tuned by the onboard phase detector (IC23, ADF4002) or by the DAC (IC22). The phase detector is used to synchronise the onboard VCTCXO with external equipment (via the J19 U.FL connector) to calibrate the frequency error. Only one of them can control the VCTCXO at a time, and the selection is done automatically. When the board is powered on, the VCTCXO is controlled by the DAC by default.

The J19 connector can also be used to supply an external reference clock directly to the clock buffer (IC20), bypassing the onboard clock circuitry. To do this, modify the board by fitting R147 and removing R137 and C354.

The external reference clock frequency range is 5–400 MHz. For frequencies below 5 MHz, ensure that the slew rate is more than 4 V/µs. This is a CMOS input with a nominal threshold of VDD/2 (3.3 V / 2 = 1.65 V) and a DC equivalent input resistance of 100 k\ |Omega|. This input can be driven from a TTL or CMOS crystal oscillator, or it can be AC-coupled.

The programmable clock generator (Si5351C) can generate any reference clock frequency from 8 kHz to 160 MHz for the FPGA and LMS7002M PLLs.

.. table:: Table 7. LimeSDR USB main clock lines

  +-------------------------------------+------------------------+--------------+------------------+-------------+
  | **Source**                          | **Schematic net name** | **FPGA pin** | **I/O standard** | **Comment** |
  +=====================================+========================+==============+==================+=============+
  | Programmable clock generator (IC24) | SI_CLK0                | T2           | 1.8 V            |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  |                                     | SI_CLK1                | AA12         | 1.8 V            |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  |                                     | SI_CLK2                | AB12         | 1.8 V            |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  |                                     | SI_CLK3                | T22          | 1.8 V            |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  |                                     | SI_CLK5                | G1           | 3.3 V            |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  |                                     | SI_CLK6                | AA11         | 1.8 V            |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  |                                     | SI_CLK7                | AB11         | 1.8 V            |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  | Clock buffer (IC20)                 | LMK_CLK                | B12          | 3.3 V            | 30.72 MHz   |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  | RF transceiver (IC1)                | LMS_MCLK1              | G21          | 3.3 V            |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  |                                     | LMS_FCLK1              | B20          | 3.3 V            |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  |                                     | LMS_MCLK2              | B11          | 3.3 V            |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  |                                     | LMS_FCLK2              | E5           | 3.3 V            |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  | USB 3.0 controller                  | FX3_PCLK               | T21          | 1.8 V            |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  |                                     | FPGA_CLK_OUT           | C2           | 3.3 V            |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
