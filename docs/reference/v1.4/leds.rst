LEDs
####

LimeSDR USB board comes with four dual colour (red and green (RG)) indication LEDs. These LEDs can be SMD or 3mm TH with dedicated right angle plastic holders. By default, dual colour SMD LEDs are populated and through hole LEDs are unpopulated. If required, the user can fit dual colour TH LEDs.

.. figure:: /images/LimeSDR-USB_1v4_components_LEDs.png
  :width: 600

  Figure 8. LimeSDR USB v1.4 indication LEDs (top)

Each LED has it is own function. Most of LEDs are connected to FPGA and their function can be changed. Default LEDs functions and other information are listed in the table below.

.. table:: Table 7. Default LEDs configuration

  +---------------------+--------------------+-----------------+-------------------+--------------------------------------------------------------------------------+
  | **Board reference** | **Schematic name** | **Board label** | **Type**          | **Description**                                                                |
  +=====================+====================+=================+===================+================================================================================+
  |                     |                    |                 |                   | LED is hardwired to VCC3P3 power rail. Steady green light indicates presence   |
  |                     |                    |                 |                   |                                                                                |
  | LED8, LEDS2.2       | GND, VCC3P3        | PWR             | Power status      | of 3.3v.                                                                       |
  +---------------------+--------------------+-----------------+-------------------+--------------------------------------------------------------------------------+
  |                     | FX3_LED_R,         |                 |                   | USB3.0 (FX3) controller, slave FIFO (GPIF) interface module and NIOS CPU       |
  |                     |                    |                 |                   |                                                                                |
  | LED2, LEDS2.1       | FX3_LED_G          | FX3             | USB activity      | activity indication:Green – idle, Red – busy.                                  |
  +---------------------+--------------------+-----------------+-------------------+--------------------------------------------------------------------------------+
  |                     |                    |                 |                   | Blinking indicates presence of TCXO clock. Colour indicates status of FPGA     |
  |                     |                    |                 |                   |                                                                                |
  |                     | FPGA_LED1_G,       |                 |                   | PLLa that are used for LMS digital interface clocking: Green – both PLLs are   |
  |                     |                    |                 |                   |                                                                                |
  | LED1, LEDS1.1       | FPGA_LED1_R        | FPGA1           | Clock status      | locked; Red/Green – at least one PLL is not locked.                            |
  +---------------------+--------------------+-----------------+-------------------+--------------------------------------------------------------------------------+
  |                     |                    |                 |                   | No light – TCXO is controlled from DACRed – TCXO is controlled from phase      |
  |                     |                    |                 |                   |                                                                                |
  |                     | FPGA_LED2_G,       |                 |                   | detector and is not locked to external reference clock Green – TCXO is         |
  |                     |                    |                 |                   |                                                                                |
  | LED7, LEDS1.2       | FPGA_LED2_R        | FPGA2           | TCXO control mode | controlled from phase detector and is locked to external reference clock       |
  +---------------------+--------------------+-----------------+-------------------+--------------------------------------------------------------------------------+
