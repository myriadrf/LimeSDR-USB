Reference Clock
###############

The LimeSDR USB clock system is based on a high stability 30.72 MHz VCTCXO (Voltage Controlled Temperature Compensated Crystal Oscillator) which can be tuned by the onboard phase detector (IC23) or DAC (IC22).

LimeSDR USB v1.4 provides both reference clock input and output U.FL connectors.

.. note::
   On LimeSDR USB v1.2 boards, the phase detector is IC16, the DAC is IC15 and the external clock input is U.FL connector J14. There is no reference clock output connector on v1.2.

.. list-table:: Table 3. Clock Functions
   :header-rows: 1

   * - Function
     - Specification
     - Notes
   * - On-board Oscillator
     - 30.72 MHz VCTCXO
     - Rakon E7355LF, ±4 ppm stability
   * - External Clock Input
     - U.FL (J19 on v1.4, J14 on v1.2)
     - 5-400 MHz, 1.8V - 3.3V
   * - Clock Output
     - U.FL (J18, v1.4 only)
     - 3.3V CMOS

.. warning::
   When using external clock references, ensure signal levels and frequencies match specifications. 
   
   Improper clock signals may cause unstable operation and potential damage to the device.

