RF Network
##########

The RF network contains matching networks and ten U.FL connectors. Each LMS7002M RF transceiver port is connected directly to its own connector. Unlike v1.4, the v1.2 board has no RF switches or loopback attenuators.

Frequency Range
===============

Each LMS7002M RF transceiver TX and RX port is connected to a dedicated RF path, and the appropriate path should be selected according to the operating frequency. On the receive side, the low-band paths (RX1_L, RX2_L) are recommended for frequencies below 1.5 GHz, the wideband paths (RX1_W, RX2_W) for 1.5 GHz to 2.2 GHz and the high-band paths (RX1_H, RX2_H) for frequencies of 2.2 GHz and above. On the transmit side, the TX1_1 and TX2_1 paths are recommended for frequencies below 2 GHz and the TX1_2 and TX2_2 paths for frequencies of 2 GHz and above. The recommended frequency ranges for all ports are summarised in Table 2.

.. note::
   The recommended frequency ranges are approximate values that cover most use cases, not hard limits of the RF paths. The optimum path may vary depending on other factors, such as the antenna and RF front-end parameters.

.. list-table:: Table 2. LMS7002M RF transceiver ports and recommended frequency ranges
   :header-rows: 1

   * - RF transceiver port
     - Connector
     - Recommended frequency range
   * - TX1_1/TX2_1
     - J1/J2
     - Below 2 GHz
   * - TX1_2/TX2_2
     - J3/J4
     - 2 GHz and above
   * - RX1_L/RX2_L
     - J5/J6
     - Below 1.5 GHz
   * - RX1_W/RX2_W
     - J9/J10
     - 1.5 GHz to 2.2 GHz
   * - RX1_H/RX2_H
     - J7/J8
     - 2.2 GHz and above

.. note::
   For HF applications (below 30 MHz), refer to :ref:`HF` for recommended matching network modifications.
