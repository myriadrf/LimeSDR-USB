Hardware Setup
##############

Host Interface
**************

LimeSDR USB should be connected to the host device via USB interface. Type Micro-B version (v1.x) should use cable with USB 3.0 type Micro-B connector on one end. Type A version (v1.xs) can be directly plugged into the USB type A socket. 

The host must provide a USB 2.0 or higher interface, and supply power (5V, 900 mA) via the USB connection.

.. note:: 
 A USB 3.0 interface is required to achieve the maximum supported data transfer rate.

Cooling
*******

Depending on the application, host system and ambient temperature, additional cooling may be required to ensure reliable operation of the LimeSDR USB board. This may be in the form of airflow through the host system, or a dedicated heatsink fitted to the board.

.. note::
   In the event of errors, instability or reduced performance, check the board temperature to ensure that it is within the specified operating range.

Acrylic Case
************

Please see `acrylic case and assembly guide`_ for acrylic case design files and instructions how to assemble it.

RF Connections
**************

.. figure:: /images/LimeSDR-USB_v1.4s_RFCON.png
  :width: 600
  
  Figure 8: LimeSDR USB board top with RF connector positions

.. list-table:: Table 1. RF Connectors
    :header-rows: 1
    :stub-columns: 1

    * - Connector
      - Frequency Range
      - Notes
    * - J1
      - 0.03 GHz - 1.9 GHz
      - Channel 1 transmit low frequency range
    * - J2
      - 2 GHz - 2.6 GHz
      - Channel 1 transmit high frequency range
    * - J3
      - 0.7 GHz - 0.9 GHz
      - Channel 1 receive low frequency range
    * - J4
      - 0.7 GHz - 2.6 GHz
      - Channel 1 receive wide frequency range
    * - J5
      - 2 GHz - 2.6 GHz
      - Channel 1 receive high frequency range  
    * - J6
      - 0.03 GHz - 1.9 GHz
      - Channel 2 transmit low frequency range
    * - J7
      - 2 GHz - 2.6 GHz
      - Channel 2 transmit high frequency range
    * - J8
      - 0.7 GHz - 0.9 GHz
      - Channel 2 receive low frequency range
    * - J9
      - 0.7 GHz - 2.6 GHz
      - Channel 2 receive wide frequency range
    * - J10
      - 2 GHz - 2.6 GHz
      - Channel 2 receive high frequency range  

.. note::
  It is possible to improve HF (<30 MHz) performance. Please see :ref:`HF` for more information.

.. warning::
   Care should be taken when connecting external RF signals to the RX inputs, to ensure that the maximum safe input power of +10 dBm is not exceeded, as this may cause permanent damage to the device.

.. _acrylic case and assembly guide: https://github.com/myriadrf/LimeSDR-USB_acrylic_case#limesdr-usb-acrylic-case