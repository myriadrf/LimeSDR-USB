RF Network
##########

The RF network contains matching networks, RF switches, two loopback variable attenuators and ten U.FL connectors, as shown in Figure 6.

.. figure:: /images/LimeSDR-USB_v1.4_diagrams_RFFE.png
  :width: 600

  Figure 6. LimeSDR USB v1.4 RF diagram

Frequency Range
===============

Each LMS7002M RF transceiver TX and RX port is connected to a dedicated RF path, and the appropriate path should be selected according to the operating frequency. On the receive side, the low-band paths (RX1_L, RX2_L) are recommended for frequencies below 1.5 GHz, the wideband paths (RX1_W, RX2_W) for 1.5 GHz to 2.2 GHz and the high-band paths (RX1_H, RX2_H) for frequencies of 2.2 GHz and above. On the transmit side, the TX1_1 and TX2_1 paths are recommended for frequencies below 2 GHz and the TX1_2 and TX2_2 paths for frequencies of 2 GHz and above. The recommended frequency ranges for all ports are summarised in Table 3.

.. note::
   The recommended frequency ranges are approximate values that cover most use cases, not hard limits of the RF paths. The optimum path may vary depending on other factors, such as the antenna and RF front-end parameters.

.. list-table:: Table 3. LMS7002M RF transceiver ports and recommended frequency ranges
   :header-rows: 1

   * - RF transceiver port
     - Connector
     - Recommended frequency range
   * - TX1_1/TX2_1
     - J1/J6
     - Below 2 GHz
   * - TX1_2/TX2_2
     - J2/J7
     - 2 GHz and above
   * - RX1_L/RX2_L
     - J3/J8
     - Below 1.5 GHz
   * - RX1_W/RX2_W
     - J5/J10
     - 1.5 GHz to 2.2 GHz
   * - RX1_H/RX2_H
     - J4/J9
     - 2.2 GHz and above

.. note::
   For HF applications (below 30 MHz), refer to :ref:`HF` for recommended matching network modifications.

Control
=======

In each channel, the TX1_2/TX2_2 output and the RX1_H/RX2_H input can be connected together through a loopback path with a variable attenuator. The RF switches and the loopback attenuators are controlled by FPGA outputs in Banks 7 and 8 (VDIO_LMS_FPGA, 2.5 V by default). RF network control signals are described in Table 4.

.. table:: Table 4. RF network control signals

  +-------------------------------+---------------------------+------------------+--------------+--------------------------------+
  | **Component**                 | **Schematic signal name** | **I/O standard** | **FPGA pin** | **Description**                |
  +===============================+===========================+==================+==============+================================+
  | Channel 1 RF switches         | TX1_2_LB_L                | 2.5 V/3.3 V      | F14          | LB_L high, LB_H low:           |
  |                               |                           |                  |              |                                |
  | (SKY13323-378LF – IC4, IC5)   |                           |                  |              | TX1_2 to J2, RX1_H to J4.      |
  |                               +---------------------------+------------------+--------------+                                |
  |                               | TX1_2_LB_H                | 2.5 V/3.3 V      | F15          | LB_L low, LB_H high:           |
  |                               |                           |                  |              |                                |
  |                               |                           |                  |              | TX1_2 to RX1_H via attenuator. |
  +-------------------------------+---------------------------+------------------+--------------+--------------------------------+
  | Channel 1 loopback attenuator | TX1_2_LB_AT               | 2.5 V/3.3 V      | E16          | High: -25 dB, low: -40 dB.     |
  |                               +---------------------------+------------------+--------------+--------------------------------+
  |                               | TX1_2_LB_SH               | 2.5 V/3.3 V      | G15          | High: shunted to GND.          |
  +-------------------------------+---------------------------+------------------+--------------+--------------------------------+
  | Channel 2 RF switches         | TX2_2_LB_L                | 2.5 V/3.3 V      | F11          | LB_L high, LB_H low:           |
  |                               |                           |                  |              |                                |
  | (SKY13323-378LF – IC6, IC7)   |                           |                  |              | TX2_2 to J7, RX2_H to J9.      |
  |                               +---------------------------+------------------+--------------+                                |
  |                               | TX2_2_LB_H                | 2.5 V/3.3 V      | H11          | LB_L low, LB_H high:           |
  |                               |                           |                  |              |                                |
  |                               |                           |                  |              | TX2_2 to RX2_H via attenuator. |
  +-------------------------------+---------------------------+------------------+--------------+--------------------------------+
  | Channel 2 loopback attenuator | TX2_2_LB_AT               | 2.5 V/3.3 V      | E15          | High: -25 dB, low: -40 dB.     |
  |                               +---------------------------+------------------+--------------+--------------------------------+
  |                               | TX2_2_LB_SH               | 2.5 V/3.3 V      | F16          | High: shunted to GND.          |
  +-------------------------------+---------------------------+------------------+--------------+--------------------------------+
