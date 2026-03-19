RF Network Control
##################

LimeSDR USB RF network contains matching networks, RF switches, loopback variable attenuator and ten SMA connectors as shown in Figure 6.

.. figure:: /images/LimeSDR-USB_v1.4_diagrams_RFFE.png
  :width: 600

  Figure 6. LimeSDR USB RF diagram

LMS7002M RF transceiver TX and RX ports has dedicated matching network which determines the working frequency range. More detailed information on LMS7002M RF transceiver ports and matching network frequency ranges is listed in the Table 3.

.. list-table:: Table 3. LMS7002M RF transceiver ports (2 channels) and matching networks frequency ranges
   :header-rows: 1

   * - RF transceiver port
     - Connector
     - Frequency Range
     - Comment
   * - TX1_1/TX2_1
     - J1/J6
     - 0.03 GHz - 1.9 GHz
     - Transmit low frequency range
   * - TX1_2/TX2_2
     - J2/J7
     - 2 GHz - 2.6 GHz
     - Transmit high frequency range
   * - RX1_L/RX2_L
     - J3/J8 
     - 0.7 GHz - 0.9 GHz
     - Receive low frequency range
   * - RX1_W/RX2_W
     - J4/J9 
     - 0.7 GHz - 2.6 GHz
     - Receive wide frequency range
   * - RX1_H/RX2_H
     - J5/J10
     - 2 GHz - 2.6 GHz  
     - Receive high frequency range

RF path control signals are described in the Table 4.

.. table:: Table 4. RF path control signals
      
  +-------------------------------+---------------------------+-------------------+--------------+-----------------------------------------------------------+
  | **Component**                 | **Schematic signal name** | ** I/O standard** | **FPGA pin** | **Description**                                           |
  +===============================+===========================+===================+==============+===========================================================+
  | Channel 1 attenuator switches | TX1_2_LB_L                | 3.3V              | F14          | L - high H - low TX1_2 to J2 and RX1_H to J4              |
  |                               +---------------------------+-------------------+--------------+                                                           |
  | (SKY13323-378LF - IC4, IC5)   | TX1_2_LB_H                | 3.3V              | F15          | L - low H - high TX1_2 and RX1_H connected via attenuator |
  +-------------------------------+---------------------------+-------------------+--------------+-----------------------------------------------------------+
  | Channel 2 attenuator switches | TX2_2_LB_L                | 3.3V              | F11          | L - high H - low TX2_2 to J2 and RX2_H to J4              |
  |                               +---------------------------+-------------------+--------------+                                                           |
  | (SKY13323-378LF - IC6, IC7)   | TX2_2_LB_H                | 3.3V              | H11          | L - low H - high TX2_2 and RX2_H connected via attenuator |
  +-------------------------------+---------------------------+-------------------+--------------+-----------------------------------------------------------+
  | Channel 1 variable attenuator | TX1_2_LB_AT               | 3.3V              | E16          | High - -40 dB, Low - -25dB                                |
  |                               +---------------------------+-------------------+--------------+-----------------------------------------------------------+
  |                               | TX1_2_LB_SH               | 3.3V              | G15          | Attenuator shunting                                       |
  +-------------------------------+---------------------------+-------------------+--------------+-----------------------------------------------------------+
  | Channel 2 variable attenuator | TX2_2_LB_AT               | 3.3V              | E15          | High - -40 dB, Low - -25dB                                |
  |                               +---------------------------+-------------------+--------------+-----------------------------------------------------------+
  |                               | TX2_2_LB_SH               | 3.3V              | F16          | Attenuator shunting                                       |
  +-------------------------------+---------------------------+-------------------+--------------+-----------------------------------------------------------+