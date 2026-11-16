.. _HF:

HF Performance
##############

Introduction
************

It is not possible to achieve optimum performance across the entire operating frequency range of LimeSDR USB — all the way from 100 kHz to 3.8 GHz — with only a single RF matching network.

As supplied, the default RF matching is optimised for frequencies above the HF band, which means that receive performance on HF bands is not optimal. However, there are easy fixes which greatly improve RX performance for HF users.

Performance
***********

The default matching network on the LimeSDR USB RX1_L input is optimised for good return loss at around 900 MHz. This means performance in the HF band is not optimal. To achieve a high level of sensitivity below 100 MHz, a number of solutions can be adopted on either RX1_L or the wideband RX1_W and RX2_W ports, depending on the particular use and preferences.

Table A gives a number of examples of how the RX1_L input can be modified from the default component values for better performance at HF. The EasyFix1 solution gives a substantial improvement in HF performance with the least amount of rework. The EasyFix2 solution has a better noise figure and uses easily obtainable components. The broadband solution provides good VSWR over a broad range of frequencies with a small noise figure penalty (around 2.5 dB).

The measured performance of the networks of Table A is shown in Figure 1 and Figure 2.

The matching network component references differ between board versions, so select the tab for your board version. The component values are the same for both versions.

.. tabs::

  .. tab:: LimeSDR USB v1.4

    .. table:: Table A. Component values for the LimeSDR USB v1.4 RX1_L input

      +-----------------------------+--------------+--------+--------+--------+--------+
      |                             | MN19         | MN17   | MN20   | MN18   | C14    |
      +=============================+==============+========+========+========+========+
      | Default (900 MHz)           | 1.2 pF       | 510 pF | 510 pF | 8.2 nH | 470 pF |
      +-----------------------------+--------------+--------+--------+--------+--------+
      | EasyFix1                    | 1.2 pF       | 510 pF | 510 pF | Remove | 470 pF |
      +-----------------------------+--------------+--------+--------+--------+--------+
      | EasyFix2                    | Remove       | 100 nF | 100 nF | Remove | 100 nF |
      +-----------------------------+--------------+--------+--------+--------+--------+
      | Broadband (100 kHz–400 MHz) | 1 pF // 82 Ω | 8.2 nH | 8.2 nH | 1 pF   | 100 nF |
      +-----------------------------+--------------+--------+--------+--------+--------+

  .. tab:: LimeSDR USB v1.2

    .. table:: Table A. Component values for the LimeSDR USB v1.2 RX1_L input

      +-----------------------------+--------------+--------+--------+--------+--------+
      |                             | MN35         | MN33   | MN37   | MN34   | C16    |
      +=============================+==============+========+========+========+========+
      | Default (900 MHz)           | 1.2 pF       | 510 pF | 510 pF | 8.2 nH | 470 pF |
      +-----------------------------+--------------+--------+--------+--------+--------+
      | EasyFix1                    | 1.2 pF       | 510 pF | 510 pF | Remove | 470 pF |
      +-----------------------------+--------------+--------+--------+--------+--------+
      | EasyFix2                    | Remove       | 100 nF | 100 nF | Remove | 100 nF |
      +-----------------------------+--------------+--------+--------+--------+--------+
      | Broadband (100 kHz–400 MHz) | 1 pF // 82 Ω | 8.2 nH | 8.2 nH | 1 pF   | 100 nF |
      +-----------------------------+--------------+--------+--------+--------+--------+

.. figure:: /images/LimeSDR_HF_Match_Fig1.png

  Figure 1. Digital signal strength for RX1_L for the matching networks of Table A

Figure 1 shows the digital output level of the receiver in dBFS, as the input frequency is swept from 100 kHz to 1 GHz with a constant input level of -45 dBm. The default network has around 40 dB less output in the HF band (3–30 MHz). All networks show a fall in level below 30 MHz due to the internal design of the LMS7002M. The LNA gain is set to 0 (maximum), and the PGA gain is set to 0 dB. This was to ensure that the receiver did not saturate around 800 MHz. For HF operation, a higher PGA gain would be possible.

.. figure:: /images/LimeSDR_HF_Match_Fig2.png

  Figure 2. Return loss and VSWR for the broadband matching network of Table A

Figure 2 shows the return loss and VSWR of the broadband network from 20 MHz to 500 MHz. The matching network forms a terminated differential transmission line, and has good performance from 30 MHz to 400 MHz. The lower frequency is set by the 100 nF capacitor C14 (C16 on v1.2). Note that the 1 pF capacitor and 82 |Omega| resistor are connected in parallel and soldered on top of each other. The noise figure of the same network was measured on an evaluationboard and found to be 10 dB at 30 MHz and 6 dB at 100 MHz. Component values can be further optimised in circuit simulators such as NGSPICE to trade off noise figure, gain and return loss.

The broadband matching network can also be applied to the wideband ports of LimeSDR USB. Table B shows example component values that can be used on RX1_W and RX2_W. Figure 3 shows the results for the matching networks of Table B. Here, the LNA gain is set to 0 (maximum), and the PGA gain is set to +19 dB. The observed behaviour is very similar to that seen for RX1_L. Both networks give reasonable return loss below 400 MHz.

.. tabs::

  .. tab:: LimeSDR USB v1.4

    .. table:: Table B. Component values for the LimeSDR USB v1.4 RX1_W and RX2_W inputs

      +-------+----------+----------+----------+----------+---------+
      |       | **MN27** | **MN25** | **MN28** | **MN26** | **C23** |
      +=======+==========+==========+==========+==========+=========+
      | RX1_W | 75 Ω     | 8.2 nH   | 8.2 nH   | 1.8 pF   | 100 nF  |
      +-------+----------+----------+----------+----------+---------+
      |       | **MN55** | **MN53** | **MN56** | **MN54** | **C43** |
      +-------+----------+----------+----------+----------+---------+
      | RX2_W | 100 Ω    | 0 Ω      | 0 Ω      | 2 pF     | 100 nF  |
      +-------+----------+----------+----------+----------+---------+

  .. tab:: LimeSDR USB v1.2

    .. table:: Table B. Component values for the LimeSDR USB v1.2 RX1_W and RX2_W inputs

      +-------+----------+----------+----------+----------+---------+
      |       | **MN51** | **MN49** | **MN53** | **MN50** | **C20** |
      +=======+==========+==========+==========+==========+=========+
      | RX1_W | 75 Ω     | 8.2 nH   | 8.2 nH   | 1.8 pF   | 100 nF  |
      +-------+----------+----------+----------+----------+---------+
      |       | **MN55** | **MN52** | **MN56** | **MN54** | **C21** |
      +-------+----------+----------+----------+----------+---------+
      | RX2_W | 100 Ω    | 0 Ω      | 0 Ω      | 2 pF     | 100 nF  |
      +-------+----------+----------+----------+----------+---------+

.. figure:: /images/LimeSDR_HF_Match_Fig3.png

  Figure 3. Digital signal strength for RX1_W and RX2_W for the matching networks of Table B

Transmit
********

The plots show that there is a degradation in output power at lower HF bands. However, it is assumed that a driver stage will be used between LimeSDR USB and a PA in any case.

Typical SSB
***********

.. figure:: /images/LimeSDR_Typical_SSB_Output_100K-1G.png

  Figure 4. Typical SSB output, 100 kHz to 1 GHz

.. figure:: /images/LimeSDR_Typical_SSB_Output_Full.png

  Figure 5. Typical SSB output, full frequency range

5 MHz LTE at 6 MHz with 64-QAM
******************************

.. figure:: /images/LTE5MHz_6MHz.gif

  Figure 6. 5 MHz LTE signal at 6 MHz with 64-QAM
