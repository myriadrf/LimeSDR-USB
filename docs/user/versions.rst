Board Versions
##############

There are currently two versions of the LimeSDR USB board: v1.4 and v1.2. Each version is available with a USB 3.0 Micro-B socket (v1.4, v1.2) or with a USB 3.0 Type A plug (v1.4s, v1.2s). Apart from the USB connector, boards with and without the letter "s" are electrically identical.

v1.4, v1.4s, v1.2 and v1.2s boards are supported by the same software. New hardware features added in each board version are listed in Table 1.

.. list-table:: Table 1. New features in each board version
   :header-rows: 1
   :stub-columns: 1

   * - Version
     - New features
   * - v1.4
     - RF loopback. TX1_2 can be connected to RX1_H and TX2_2 to RX2_H through a variable attenuator.

       Reference clock output (U.FL connector J18).

       Hardware and BOM version straps, so the gateware can identify the board version.

       Power source status (USB or external supply) can be read by the FPGA.
   * - v1.2
     - Initial version.

.. tabs::

  .. tab:: LimeSDR USB v1.4

    .. figure:: /images/LimeSDR-USB_v1.4_3D_top.png
      :width: 600

      Figure 1. LimeSDR USB v1.4 board top view

    .. figure:: /images/LimeSDR-USB_v1.4s_3D_top.png
      :width: 600

      Figure 2. LimeSDR USB v1.4s board top view

  .. tab:: LimeSDR USB v1.2

    .. figure:: /images/LimeSDR-USB_v1.2_TOP.png
      :width: 600

      Figure 1. LimeSDR USB v1.2 board top view

    .. figure:: /images/LimeSDR-USB_v1.2s_TOP.png
      :width: 600

      Figure 2. LimeSDR USB v1.2s board top view
