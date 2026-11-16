Clock Distribution
##################

The LimeSDR USB board clock distribution block diagram is presented in Figure 7.

.. figure:: /images/LimeSDR-USB_v1.2_diagrams_clock.jpg
  :width: 600

  Figure 7. LimeSDR USB v1.2 board clock distribution block diagram

The LimeSDR USB board has an onboard 30.72 MHz ±250 ppb VCTCXO that acts as the reference clock for the LMS7002M PLLs. The onboard phase detector (ADF4002) is used to synchronise the onboard VCTCXO with external equipment (via the J14 U.FL connector) to calibrate the frequency error. The onboard DAC can also be used to tune the VCTCXO. Only one of them can control the VCTCXO at a time. The DAC and phase detector are controlled by the FX3 (USB), and the selection between them is done automatically. The J14 connector can also be used to supply an external reference clock (by fitting R106 and removing R96 and C212). The programmable clock generator (Si5351C) can generate any reference clock frequency from 8 kHz to 160 MHz for the FPGA and LMS7002M PLLs.
