Board temperature control
#########################

LimeSDR-USB has integrated temperature sensor which controls FAN to keep board in operating temperature range. FAN must be connected to J13 (0.1” pitch) connector or to J14 (0.05” pitch) connector. FAN control voltage is 3.3V.

Fan will be turned on if board will heat up to 55°C and FAN will be turned off if board will cool down to 45°C.



.. figure:: /images/LimeSDR-USB_1v4_fan_control_hyst.png
  :width: 600
  
  Figure 11: FAN control temperature hysteresis 

Measured temperature value can read by using LimeSuiteGUI.

Connect the fan as shown in the picture bellow.

.. figure:: /images/LimeSDR-USB_v1.4_Fan.png
  :width: 600
  
  Figure 12: FAN connection to the 1.27mm header, J14