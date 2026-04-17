Power Distribution
##################

LimeSDR-USB board can be powered from USB port. In applications where USB power is insufficient board can be powered from external 6..12V power supply. External power supply can be fed to J20 barrel power connector by using power plug (1.35mm ID, 3.5mm OD) or pin header J21 (GND and VCC_EXT). External power supply connections have automatic source selection between USB and external source with polarity protection.

LimeSDR-USB board has complex power delivery network consisting of many different power rails with different voltages, filters, power sequences. LimeSDR-USB board power distribution block diagram is presented in Figure 13.

.. figure:: /images/LimeSDR-USB_1v4_power_bd.png
  :width: 600

  Figure 13. LimeSDR USB v1.4 board power distribution block diagram

Power network power circuit ICs are presented in Figure 14.

.. figure:: /images/LimeSDR-USB_1v4_power_ics_topbot.png
  :width: 600

  Figure 14. LimeSDR USB board power ICs on top and bottom
