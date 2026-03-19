Reference Clock
###############

The LimeSDR USB clock system is based on a high stability 30.72 MHz VCTCXO (Voltage Controlled Temperature Compensated Crystal Oscillator) which can be tuned by on-board phase detector (IC23) or DAC (IC22).

The board provides both reference clock input and output U.FL connectors.

.. list-table:: Table 2. Clock Functions
   :header-rows: 1

   * - Function
     - Specification
     - Notes
   * - On-board Oscillator
     - 30.72 MHz VCTCXO
     - Rakon E7355LF, ±4 ppm stability
   * - External Clock Input
     - U.FL (J19)
     - 5-400 MHz, 1.8V - 3.3V
   * - Clock Output
     - U.FL (J18)
     - 3.3V CMOS

.. warning::
   When using external clock references, ensure signal levels and frequencies match specifications. 
   
   Improper clock signals may cause unstable operation and potential damage to the device.

