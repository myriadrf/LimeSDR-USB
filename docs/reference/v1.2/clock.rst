Clock Distribution
##################

LimeSDR USB board clock distribution block diagram is presented in Figure 7.

.. figure:: /images/LimeSDR-USB_v1.2_diagrams_clock.jpg
  :width: 600

  Figure 7. LimeSDR USB v1.2 board clock distribution block diagram

The LimeSDR-USB board has an on-board 30.72 MHz ±250 ppb VCTCXO that acts as a reference clock for LMS_PLLs. The on-board frequency synthesiser (ADF4002) is used to synchronise the on-board VCTCXO with external equipment (via the J14 U.FL connector) to calibrate frequency error. On-board DAC also can be used to tune VCTCXO. At the same time only ADF or DAC can control VCTCXO. DAC and ADF is controlled by FX3 (SUB) and selection between ADF and DAC is done automatically. The J14 connector can also be used to supply external reference clock (by fitting R106 and removing R96, C212). The programmable clock generator (Si5351C) can generate any reference clock frequency, starting from 8 kHz – 160 MHz, for FPGA and LMS PLLs
