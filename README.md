# LimeSDR

![LimeSDR board](/images/LimeSDR_722w.jpg)

The [LimeSDR](https://myriadrf.org/projects/limesdr/) board provides a hardware platform for developing and prototyping high-performance and logic-intensive digital and RF designs using Altera’s Cyclone IV FPGA and Lime Microsystems transceiver.

* **USB Interface** 
  * Cypress FX3 super speed USB 3rd generation controller 
* **FPGA Features**
  * Cyclone IV EP4CE40F23C8N device in 484-pin FPGA
  * 39’600 logic elements
  * 1134 Kbits embedded memory
  * 116 embedded 18x18 multipliers 
  * 4 PLLs 
* **FPGA Configuration**
  * JTAG mode configuration 
  * Active serial mode configuration 
  * Possibility to update FPGA gateware by using FX3 (USB)
* **Memory Devices** 
  * 2x 1Gbit (64M x 16) DDR2 SDRAM 
  * 4Mbit flash for FX3 firmware
  * 16Mbit flash for FPGA gateware
  * 3x 64K (8K x 8) EEPROMs for LMS MCU firmware, LMS MCU data and FX3 data
* **Connections**
  * 6-12V DC power jack
  * FPGA GPIO headers
  * Micro USB3.0 (type B) connector or USB3.0 (type A) plug
  * Coaxial RF (U.FL) connectors
* **Clock System**
  * 30.72MHz ±250 ppb on board VCTCXO
  * Possibility to lock VCTCXO to external clock or tune VCTCXO by onboard DAC 
  * Programmable clock generator for the FPGA reference clock input or LMS PLLs
* **Board Size** 60mm x 100mm (2.36” x 3.94”) 

## Contents

The directory structure is as follows:

      fx3/                       - Cypress FX3 USB 3.0 controller firmware
         
      gateware/                  - Altera Cyclone IV FPGA project

      hardware/<variant>/<version>/
          Libraries/             - Component Libraries
          OutputJobs/            - Output jobs
          PCB/                   - PCB design
          Project Outputs/       - BOM, rule check reports, Gerbers, pick & place files, PDFs
          Schematics/            - Schematic diagrams

### Revisions

The design databases published correspond to hardware revisions which have either gone into full production or been issued in limited number for testing in the community. 

Please note that only certain versions of FPGA firmware and FX3 firmware will work with a given hardware revision. For further details see the FPGA and FX3 projects.

## Associated projects

### FPGA gateware

The FPGA gateware sources are located in the [LimeSDR-USB_GW repository](https://github.com/myriadrf/LimeSDR-USB_GW).

### FX3 firmware

The Cypress FX3 USB 3.0 controller firmware sources are located in the [LimeSDR-USB_FX3 repository](https://github.com/myriadrf/LimeSDR-USB_FX3).

### Host driver

The host driver sources are located in the [LimeSuite repository](https://github.com/myriadrf/LimeSuite).

## Licensing

The hardware designs are licensed under a Creative Commons Attribution 3.0 Unported licence.
