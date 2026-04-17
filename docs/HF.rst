.. _HF:

HF Performance
##############

Introduction
************

It is not possible to achieve optimum performance across the entire operating frequency range of LimeSDR — all the way from 100kHz to 3.8GHz — with only a single RF matching network.

As supplied the default is for RF matching to be optimised for use with modern wireless systems, which means that receive performance on HF bands is non-optimal. However, there are easy fix solutions which will greatly improve RX performance for HF users.

Performance
***********

The default matching network on the LimeSDR RX1_L input is optimized for good return loss at around 900MHz, where the majority of applications reside. This means non-optimal performance in the HF band. In order to satisfy the need for a high level of sensitivity below 100MHz, there are a number of solutions that could be adopted on either RX1_L or the Broadband RX1_W and RX2_W ports, depending upon particular use and preferences.

Table A gives a number of examples on how the RX1_L input can be modified from the default component values for better performance at HF. The EasyFix1 solution gives substantial improvement in HF performance with the least amount of reworking. The EasyFix2 solution has a better noise figure, and uses easily obtainable components. The broadband solution provides good VSWR over broad range of frequencies with a small Noise Figure penalty (around 2.5dB).

The measured performance of the networks of Table A are shown in Figure 1 and Figure 2.

.. table:: Table A. Component Values for the LimeSDR RX1_L input.

  +--------------------------+----------+-------+-------+--------+-------+
  |                          |   MN19   |  MN17 |  MN20 |  MN18  |  C14  |
  +==========================+==========+=======+=======+========+=======+
  | Default (900MHz)         | 1.2pF    | 510pF | 510pF | 8.2nH  | 470pF |
  +--------------------------+----------+-------+-------+--------+-------+
  | EasyFix1                 | 1.2pF    | 510pF | 510pF | Remove | 470pF |
  +--------------------------+----------+-------+-------+--------+-------+
  | EasyFix2                 | Remove   | 100nF | 100nF | Remove | 100nF |
  +--------------------------+----------+-------+-------+--------+-------+
  | Broadband (100kH-400Mhz) | 1pF//82R | 8.2nH | 8.2nH | 1pF    | 100n  |
  +--------------------------+----------+-------+-------+--------+-------+

.. figure:: /images/LimeSDR_HF_Match_Fig1.png

  Figure 1 Digital Signal Strength for RX1_L for the matching networks of Table A.

Figure 1 shows the digital output level of the receiver in dBFS, as the input frequency is swept from 100kHz to 1GHz with a constant input level of -45dBm. It can be seen that the default network has around 40dB less output in the HF band (3-30MHz). All networks show a fall in level below 30MHz due to internal design of the LMS7002M. The LNA gain is set to 0 (Maximum), and the PGA gain is set to 0dB. This was to ensure the receiver did not saturate around 800MHz. For HF operation, higher PGA gain would be possible.

.. figure:: /images/LimeSDR_HF_Match_Fig2.png

  Figure 2 Return Loss and VSWR for Broadband Matching network of Table A.

Figure 2 shows the Return Loss and VSWR of the Broadband network from 20MHz to 500MHz. The matching network forms a terminated differential transmission line, and has good performance from 30MHz to 400MHz. The lower frequency is set by the 100nF capacitor C14. Note 1pF and 82R resistor are in parallel and soldered on top of each other. The Noise figure of the same network was measured on an evaluation board and found to be 10dB at 30MHz and 6dB at 100MHz. It is possible to further optimize component values in circuit simulators such as NGSPICE and other simulators to trade noise figure, gain and return loss.

The broadband matching network can also be applied to the wideband ports of the LimeSDR. Table B shows some example component values that can be used on RX1_W and RX2_W. In Figure 3 we show results for the matching networks of Table B. Here, the LNA gain is set to 0 (Maximum), and the PGA gain is set to +19dB. The observed behaviour is very similar to that seen for RX1_L. Both networks give reasonable return loss below 400MHz.

.. table:: Table B Component Values for the LimeSDR

  +-------+------+-------+-------+-------+-------+
  |       | MN27 |  MN14 |  MN28 |  MN26 |  C23  |
  +=======+======+=======+=======+=======+=======+
  | RX1_W | 75R  | 8.2nH | 8.2nH | 1.8pF | 100nF |
  +-------+------+-------+-------+-------+-------+
  |       | MN55 |  MN53 |  MN56 |  MN54 |  C43  |
  +-------+------+-------+-------+-------+-------+
  | RX2_W | 100R | 0R    | 0R    | 2pF   | 100nF |
  +-------+------+-------+-------+-------+-------+

.. figure:: /images/LimeSDR_HF_Match_Fig3.png

Transmit
********

The plots show that there is a degradation in output power at lower HF bands. However, it is assumed that a driver stage will be used between the LimeSDR and a PA in any case.

Typical SSB
***********

.. figure:: /images/LimeSDR_Typical_SSB_Output_100K-1G.png

.. figure:: /images/LimeSDR_Typical_SSB_Output_Full.png

5MHz LTE at 6MHz with 64-QAM
****************************

.. figure:: /images/LTE5MHz_6MHz.gif
