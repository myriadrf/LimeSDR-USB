Power Distribution
##################

The LimeSDR USB board can be powered from its USB port. In applications where USB power is insufficient, the board can be powered from an external 6–12 V power supply. External power can be fed to the J20 barrel power connector using a power plug (1.35 mm ID, 3.5 mm OD) or to pin header J21 (GND and VCC_EXT, not fitted). The board automatically selects between the USB and external sources, with reverse polarity protection.

The LimeSDR USB board has a complex power delivery network, consisting of many power rails with different voltages, filters and power sequences. The board power distribution block diagram is presented in Figure 13.

.. figure:: /images/LimeSDR-USB_1v4_power_bd.png
  :width: 600

  Figure 13. LimeSDR USB v1.4 board power distribution block diagram

The power supply ICs are shown in Figure 14.

.. figure:: /images/LimeSDR-USB_1v4_power_ics_topbot.png
  :width: 600

  Figure 14. LimeSDR USB board power ICs on top and bottom
