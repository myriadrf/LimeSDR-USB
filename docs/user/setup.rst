Hardware Setup
##############

Host Interface
**************

LimeSDR USB should be connected to the host device via USB. Micro-B versions (v1.4, v1.2) should use a cable with a USB 3.0 Micro-B connector on one end. Type A versions (v1.4s, v1.2s) can be plugged directly into a USB Type-A socket.

The host must provide a USB 3.0 interface, which supplies up to 900 mA at 5 V. A USB 2.0 port can also be used, but it only guarantees 500 mA, which may not be enough in some configurations and limits the data transfer rate.

External Power
**************

In applications where USB power is insufficient, the board can be powered from an external 6–12 V DC supply connected to the DC jack (J20 on v1.4, J15 on v1.2) using a 1.35 mm ID, 3.5 mm OD plug. The board automatically selects between USB and external power, with reverse polarity protection. The external power pin header (J21 on v1.4, J16 on v1.2) is not fitted by default.

Cooling
*******

Depending on the application, host system and ambient temperature, additional cooling may be required to ensure reliable operation of the LimeSDR USB board. This may be in the form of airflow through the host system, or a dedicated heatsink fitted to the board.

.. note::
   In the event of errors, instability or reduced performance, check the board temperature to ensure that it is within the specified operating range.

Fan Connection
==============

A 3.3 V fan can be connected to the 1.27 mm pitch fan connector (J14 on v1.4, J20 on v1.2). A footprint for a 2.54 mm pitch connector (J13 on v1.4, J19 on v1.2) is also provided, but not fitted by default. The fan is switched on and off by the FPGA according to the board temperature, see :doc:`/reference/v1.4/tempsensor`.

Acrylic Case
************

Please see `acrylic case and assembly guide`_ for acrylic case design files and instructions how to assemble it.

RF Connections
**************

.. figure:: /images/LimeSDR-USB_v1.4s_RFCON.png
  :width: 600
  
  Figure 3. LimeSDR USB v1.4s board top with RF connector positions

Figure 3 shows the RF connector positions on LimeSDR USB v1.4s. LimeSDR USB v1.2 boards use different connector designators, which are listed in Table 2.

.. list-table:: Table 2. RF connectors
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