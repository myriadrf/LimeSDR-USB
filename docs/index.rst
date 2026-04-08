Introduction
############

.. toctree::
   :maxdepth: 2
   :hidden:

   Introduction <self>
   user/index
   reference/index
   HF
   developer
.. tabs::
    
  .. tab:: LimeSDR USB Type A

    .. figure:: /images/LimeSDR_1v4s.png
        :align: center
        :width: 600

  .. tab:: LimeSDR USB Type Micro-B

    .. figure:: /images/LimeSDR_1v4.png
        :align: center
        :width: 600

The LimeSDR USB is a software-defined radio (SDR), with 2T2R MIMO capability and covering frequency range from 30 MHz to 2.6 GHz, with up to 61.44 MHz bandwidth. It is designed for flexible, wideband wireless communication development and experimentation.

The LimeSDR-USB development board provides a hardware platform for developing and prototyping high-performance and logic-intensive digital and RF designs using Altera’s Cyclone IV FPGA and Lime Microsystems transceiver.

The LimeSDR-USB is available in versions with a USB Type A plug or a USB Type Micro-B socket connector. Both versions function identical.

Specifications
**************

RF
==

.. list-table:: 
   :header-rows: 1
   :stub-columns: 1

   * - Parameter
     - Value
     - Notes
   * - Configuration
     - MIMO (2T2R)
     - Full duplex
   * - Frequency Range
     - 30 MHz – 2.6 GHz
     - Continuous coverage
   * - Bandwidth
     - up to 61.44 MHz
     - Software configurable
   * - Sample rate
     - 61.44 MSPS
     - 
   * - Sample depth
     - 12 bit
     - 
   * - Power Ouput (CW)
     - Up to 10 dBm
     - Dependent on frequency
   * - Max. Safe Rx Input Power
     - 10 dBm
     - Absolute maximum
   * - Rx Gain Range
     - 89 dB
     - LNA + TIA + PGA combined


Digital Interface
=================

USB 3.0. 

Power Supply
============

.. table:: 

   +---------------+--------------+---------------------+
   | **Parameter** | **Value**    | **Notes**           |
   +===============+==============+=====================+
   | Input Voltage | 5 V DC       | USB connector       |
   |               +--------------+---------------------+
   |               | 6V - 12 V DC | DC barrel connector |
   +---------------+--------------+---------------------+
   | Maximum Power | 4.5 W        | USB 3.0 limit       |
   +---------------+--------------+---------------------+

.. note::
   Power consumption depends on configuration.

.. warning::
   Incorrect voltage or inadequate current capacity may cause damage or unstable operation.

Environmental
=============

.. list-table:: 
   :header-rows: 1
   :stub-columns: 1

   * - Parameter
     - Value
     - Notes
   * - Operating Temperature
     - 0 °C to +70 °C
     - Commercial-grade
   * - Storage Temperature
     - 0 °C to +70 °C
     - N/A
   * - Operating Humidity
     - 10% to 90% RH  
     - Non-condensing

Mechanical
==========

Compact form factor, 60 × 100 mm, ~30g weight. (without enclosure)

Features
********

Devices
=======

* RF transceiver: Lime Microsystems LMS7002M
*  FPGA: Altera Cyclone IV family EP4CE40F23C8N in 484-pin FPGA package
 
 * 39’600 logic elements
 * 1134 Kbits embedded memory
 * 116 embedded 18x18 multipliers
 * 4 PLLs
 * JTAG mode configuration
 * Active serial mode configuration
 * Possibility to update FPGA gateware by using FX3 (USB)
  
* USB 3.0 controller: Cypress CYUSB3014
* Temperature sensor: LM75
  
Clock system
============

* 30.72MHz VCTCXO (precision: ±1 ppm initial, ±4 ppm stable).
* Possibility to lock VCTCXO to external clock or tune VCTCXO by onboard DAC
* Programmable clock generator for the FPGA reference clock input or LMS PLLs

Memory
======

* 2x 1Gbit (64M x 16) DDR2 SDRAM
* 4Mbit flash for FX3 firmware
* 16Mbit flash for FPGA gateware
* 2 x 128K (16K x 8) EEPROMs for LMS MCU firmware, LMS MCU data
* 1 x 64K (8K x 8) EEPROM for FX3 data

Connections
===========

* microUSB3.0 (type B) connector or USB3.0 (type A) plug
* Coaxial RF (U.FL) connectors
* FPGA GPIO headers (0.05” pitch)
* FPGA and FX3 JTAG connectors (0.05” pitch)
* 6..12V DC power jack and pinheader
* Fan connector (3.3V)

Purchasing
**********

Please see the  `Lime Micro website`_ for purchasing options.

RoHS
====

This product is RoHS compliant and does not contain hazardous substances as defined by Directive 2011/65/EU.

WEEE
====

This product must be disposed of properly according to local regulations. Do not dispose of with general household waste.

RF Transmission Notice
======================

.. warning::
   Operating RF transmitting equipment may require appropriate licensing. Users are responsible for ensuring compliance with local regulations. Unauthorised transmission may result in legal penalties.


.. _Lime Micro Website: https://limemicro.com/sdr/limesdr-usb/