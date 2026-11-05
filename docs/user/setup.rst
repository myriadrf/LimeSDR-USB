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

.. list-table:: Table 1. RF connectors
    :header-rows: 1
    :stub-columns: 1

    * - RF port
      - Connector (v1.4)
      - Connector (v1.2)
      - Recommended range
    * - TX1_1
      - J1
      - J1
      - Below 2 GHz
    * - TX1_2
      - J2
      - J3
      - 2 GHz and above
    * - RX1_L
      - J3
      - J5
      - Below 1.5 GHz
    * - RX1_W
      - J5
      - J9
      - 1.5 GHz to 2.2 GHz
    * - RX1_H
      - J4
      - J7
      - 2.2 GHz and above
    * - TX2_1
      - J6
      - J2
      - Below 2 GHz
    * - TX2_2
      - J7
      - J4
      - 2 GHz and above
    * - RX2_L
      - J8
      - J6
      - Below 1.5 GHz
    * - RX2_W
      - J10
      - J10
      - 1.5 GHz to 2.2 GHz
    * - RX2_H
      - J9
      - J8
      - 2.2 GHz and above

.. note::
  The recommended frequency ranges are approximate values that cover most use cases, not hard limits of the RF paths. The optimum path may vary depending on other factors, such as the antenna and RF front-end parameters.

.. note::
  For HF applications (below 30 MHz), refer to :ref:`HF` for recommended matching network modifications.

.. warning::
   Care should be taken when connecting external RF signals to the RX inputs, to ensure that the maximum safe input power of +10 dBm is not exceeded, as this may cause permanent damage to the device.

.. _acrylic case and assembly guide: https://github.com/myriadrf/LimeSDR-USB_acrylic_case#limesdr-usb-acrylic-case