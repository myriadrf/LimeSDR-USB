Clock Distribution
##################

LimeSDR USB board clock distribution block diagram is presented in Figure 7.

.. figure:: /images/LimeSDR-USB_1v4_diagrams_clock.png
  :width: 600

  Figure 7. LimeSDR USB v1.4 board clock distribution block diagram

LimeSDR-USB board has onboard 30.72 MHz VCTCXO (precision: ±1 ppm initial, ±4 ppm stable) that is reference clock for LMS_PLLs. See block diagram of the clock distribution system in Figure 7.

VCTCXO can be tuned by onboard phase detector (IC23, ADF4002) or by DAC (IC22). The onboard frequency synthesizer is used to synchronize onboard VCTCXO with external equipment (via J19 U.FL connector) to calibrate frequency error. At the same time only ADF or DAC can control VCTCXO. Selection between ADF and DAC is done automatically. When board is powered, by default VCTCXO is controlled by DAC.

J19 connector can also be used to supply external reference clock to the Clock Buffer (IC20) directly and bypassing a on board clock circuitry. For this you have to modify your board by fitting R147 and removing R137 and C354 components.

External reference clock frequency range is 5 MHz - 400 MHz. For frequencies less than 5 MHz, ensure slew rate is more than 4 V/μ. This is a CMOS input with a nominal threshold of VDD/2 (3.3 V / 2 = 1.65 V) and a DC equivalent input resistance of 100 kΩ. This input can be driven from a TTL or CMOS crystal oscillator or it can be AC-coupled.

The programmable clock generator (Si5351C) can generate any reference clock frequency, starting from 8 kHz – 160 MHz, for FPGA and LMS PLLs.

.. table:: Table 5. LimeSDR USB main clock lines

  +-------------------------------------+------------------------+--------------+------------------+-------------+
  | **Source**                          | **Schematic net name** | **FPGA pin** | **I/O standard** | **Comment** |
  +=====================================+========================+==============+==================+=============+
  | Programmable clock generator (IC24) | SI_CLK0                | T2           | 1.8V             |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  |                                     | SI_CLK1                | AA12         | 1.8V             |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  |                                     | SI_CLK2                | AB12         | 1.8V             |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  |                                     | SI_CLK3                | T22          | 1.8V             |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  |                                     | SI_CLK5                | G1           | 3.3V             |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  |                                     | SI_CLK6                | AA11         | 1.8V             |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  |                                     | SI_CLK7                | AB11         | 1.8V             |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  | Clock buffer (IC13)                 | LMK_CLK                | B12          | 3.3V             | 30.72MHz    |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  | RF transceiver (IC1)                | LMS_MCLK1              | G21          | 3.3V             |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  |                                     | LMS_FCLK1              | B20          | 3.3V             |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  |                                     | LMS_MCLK2              | B11          | 3.3V             |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  |                                     | LMS_FCLK2              | E5           | 3.3V             |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  | USB3.0 controller                   | FX3_PCLK               | T21          | 1.8V             |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
  |                                     | FPGA_CLK_OUT           | C2           | 3.3V             |             |
  +-------------------------------------+------------------------+--------------+------------------+-------------+
