Power Distribution
##################

The LimeSDR-USB board can be powered from its USB port. In applications where USB power is insufficient, the board can be powered from an external 6 – 12 V power supply. External power can be fed to the J18 barrel power connector using power plug (1.35mm ID, 3.5mm OD) or pin header J19 (GND and VCC_EXT). The LimeSDR-USB board has automatic source selection between USB and external source, with polarity protection.

LimeSDR-USB board has complex power delivery network consisting of many different power rails with different voltages, filters, power sequences. LimeSDR-USB board power distribution block diagram is presented in Figure 13.

.. figure:: /images/LimeSDR-USB_v1.2_power_bd.jpg
  :width: 600

  Figure 11. LimeSDR USB v1.2 board power distribution block diagram

Power network power circuit ICs are presented in Figure 14.

.. figure:: /images/LimeSDR-USB_v1.2_power_ics_topbot.jpg
  :width: 600

  Figure 12. LimeSDR USB v1.2 board power ICs on top and bottom
