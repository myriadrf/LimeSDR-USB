LEDs
####

The LimeSDR USB board comes with four dual colour (red-green) indication LEDs. These can be SMD LEDs or 3 mm through-hole LEDs with dedicated right-angle plastic holders. By default, dual colour SMD LEDs are fitted and through-hole LEDs are not fitted. If required, the user can fit dual colour through-hole LEDs.

.. figure:: /images/LimeSDR-USB_1v4_components_LEDs.png
  :width: 600

  Figure 8. LimeSDR USB v1.4 indication LEDs (top)

Each LED has its own function. Most of the LEDs are connected to the FPGA, so their function can be changed. Default LED functions are listed in Table 9.

.. list-table:: Table 9. Default LED configuration
   :header-rows: 1

   * - Board reference
     - Schematic name
     - Board label
     - Type
     - Description
   * - LED8, LEDS2.2
     - GND, VCC3P3
     - PWR
     - Power status
     - Hardwired to the VCC3P3 power rail.

       Steady green: 3.3 V is present.
   * - LED2, LEDS2.1
     - FX3_LED_R,

       FX3_LED_G
     - FX3
     - USB activity
     - Activity of the FX3 controller, GPIF interface module and NIOS CPU.

       Green: idle.

       Red: busy.
   * - LED1, LEDS1.1
     - FPGA_LED1_G,

       FPGA_LED1_R
     - FPGA1
     - Clock status
     - Blinking indicates the presence of the TCXO clock.

       Colour indicates the status of the FPGA PLLs for LMS7002M interface clocking.

       Green: both PLLs are locked.

       Red-green: at least one PLL is not locked.
   * - LED7, LEDS1.2
     - FPGA_LED2_G,

       FPGA_LED2_R
     - FPGA2
     - TCXO control mode
     - No light: TCXO is controlled from the DAC.

       Red: TCXO is controlled from the phase detector, but is not locked.

       Green: TCXO is locked to the external reference clock via the phase detector.
