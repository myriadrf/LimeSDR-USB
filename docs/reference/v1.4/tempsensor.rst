Board Temperature Control
#########################

LimeSDR USB has an integrated temperature sensor, which is used to control the fan to keep the board within its operating temperature range. The fan must be connected to the J14 (0.05” pitch) connector or to the J13 (0.1” pitch, not fitted) connector. The fan supply voltage is 3.3 V.

The fan is switched on when the board heats up to 55 °C, and switched off when the board cools down to 45 °C.



.. figure:: /images/LimeSDR-USB_1v4_fan_control_hyst.png
  :width: 600

  Figure 11. Fan control temperature hysteresis

The measured temperature can be read using the Lime Suite NG GUI (limeGUI).

Connect the fan as shown in Figure 12.

.. figure:: /images/LimeSDR-USB_v1.4_Fan.png
  :width: 600

  Figure 12. Fan connection to the 1.27 mm header J14
