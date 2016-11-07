Board Description
-----------------

board designation           : LimeSDR-USB
board version		        : v1.4s
board type                  : Lead Free
board size                  : 100 mm x 60 mm
board thickness             : 1.6 mm +/- 10 %
board material              : IT-180A
number of layers            : 12 (10 inner)
 

Top layer copper foil thickness: 17.5 um
Dielectric thickness between Top layer and 2nd layer: 173 um (6.8 mils)
Dielectric between Top layer and 2nd layer relative permittivity (Er): 4.2

Bottom layer copper foil thickness: 17.5 um
Dielectric thickness between L11 layer and Bottom layer: 173 um (6.8 mils)
Dielectric between L11 and Bottom layer relative permittivity (Er): 4.2


minimum finished hole size  :  200 um
minimum spacing             :  100 um
minimum track width         :  100 um

drill diameters             : finished hole

plating finish (both sides) : immersion gold
                              0.05-0.10 um of gold over
                              2.50-5.00 um of nickel
							
Top silkscreen              : Required
Bottom silkscreen           : Required



Drill files
-----------------
	- LimeSDR-USB_1v4s.DRR -> Drill report detailing the tool assignments, hole sizes, hole count and tool travel. 
   
	- Throughole vias are covered in the following files:
   								File Name																	Start Layer						Stop Layer
						LimeSDR-USB_1v4s-RoundHoles.TXT															Top									Bottom
	- Slotholes are covered in the following files:
						LimeSDR-USB_1v4s-SlotHoles.TXT															Top									Bottom	
						
	- IMPORTANT! Hole diameters are final manufactured diameters INCLUDING HOLE METALIZATION.
	
Gerber files
---------------

			File Name					Layer/Comment
		LimeSDR-USB_1v4s.GTL				Top (Signal)
		LimeSDR-USB_1v4s.G1				L2  (Signal)
		LimeSDR-USB_1v4s.G2				L3  (Signal)
		LimeSDR-USB_1v4s.G3				L4  (Signal)
		LimeSDR-USB_1v4s.G4				L5  (Signal)
		LimeSDR-USB_1v4s.G5				L6  (Signal)
		LimeSDR-USB_1v4s.G6				L7  (Signal)	
		LimeSDR-USB_1v4s.G7				L8  (Signal)
		LimeSDR-USB_1v4s.G8				L9  (Signal)
		LimeSDR-USB_1v4s.G9				L10 (Signal)
		LimeSDR-USB_1v4s.G10				L11 (Signal)
		LimeSDR-USB_1v4s.GBL				Bottom (Signal)

		 
		LimeSDR-USB_1v4s.GPB				Bottom Pad Master
		LimeSDR-USB_1v4s.GPT				Top Pad Master

		LimeSDR-USB_1v4s.GTO				Top Overlay
		LimeSDR-USB_1v4s.GTP				Top Paste
		LimeSDR-USB_1v4s.GTS				Top Solder

 
		LimeSDR-USB_1v4s.GBS				Bottom Solder
		LimeSDR-USB_1v4s.GBP				Bottom Paste
		LimeSDR-USB_1v4s.GBO				Bottom Overlay


		LimeSDR-USB_1v4s.GM1				Mechanical 1 (Board Cutout)


		LimeSDR-USB_1v4s.GM14				ASM BOT (Assembly bottom)
		LimeSDR-USB_1v4s.GM15				ASM TOP (Assembly top)
		
  
Important Notes
---------------
0.31mm ring and 0.2mm drill via-in-pads must be resin filled with metal cap (IC1).

IC1 thermal pad vias must be resin filled with metal cap.

DRCs must be run on Gerber files before building boards.

All through hole vias may be plated shut.

Solder mask : dark blue, both sides, halogen free, glossy finish (NOT matte).

Silkscreen : white epoxy ink, halogen free, both sides. No silkscreen on pads.

Electrical test : 100 % netlist.

Boards are to be individually bagged.

Design software used:  Altium Designer 16.1.11 (build 255) under VGTU commercial license 

Controlled Impedance
--------------------

  * 100 Ohm coupled microstrip line (Top layer) characteristics:
    Top layer copper foil thickness: 17.5 um
	Track width = 0.2 mm (6.8 mils)
	Track spacing = 0.14 mm (5.51 mils)
	Track width/spacing ratio = 1.428
	Dielectric thickness from top to L2 = 173um (6.8 mils)
	Dielectric between Top layer and 2nd layer relative permittivity (Er): 4.2
	
	Approximate coupled microstrip line impedance = 100.752 Ohms (+/- 10% tolerance)
	
  * 50 Ohm microstrip line (Top layer, without GND) characteristics:
    Top layer copper foil thickness: 17.5 um
	Track width = 0.325 mm (12.795 mils)
	Dielectric thickness from top to L2 = 173um (6.8 mils)
	Dielectric between Top layer and 2nd layer relative permittivity (Er): 4.2
	
	Approximate microstrip line impedance = 49.99 Ohms (+/- 10% tolerance)

  * 50 Ohm coplanar waveguide with GND (Bottom layer) characteristics:
    Bottom layer copper foil thickness: 17.5 um
	Track width = 0.254 mm (10 mils)
	Distance to GND: 0.1 mm (3.937 mils)
	Dielectric thickness from Bottom to L11 = 173um (6.8 mils)
	Dielectric between Bottom layer and L11 relative permittivity (Er): 4.2
	
	Approximate microstrip line impedance = 49.99 Ohms (+/- 10% tolerance)	
	
  * 90 Ohm coupled microstrip line (Top layer, without GND) characteristics:
    Top layer copper foil thickness: 17.5 um
	Track width = 0.2 mm (6.8 mils)
	Track spacing = 0.1 mm (3.93 mils)
	Track width/spacing ratio = 2
	Dielectric thickness from Top to 2nd layer = 173um (6.8 mils)
	Dielectric between Top layer and 2nd layer relative permittivity (Er): 4.2
	
	Approximate coupled microstrip line impedance = 90.5 Ohms (+/- 10% tolerance)	
	
  * 90 Ohm coupled microstrip line (Bottom layer) characteristics:
    Bottom layer copper foil thickness: 17.5 um
	Track width = 0.2 mm (6.8 mils)
	Track spacing = 0.1 mm (3.93 mils)
	Track width/spacing ratio = 2
	Dielectric thickness from L11 to Bottom layer = 173um (6.8 mils)
	Dielectric between L11 layer and Bottom layer relative permittivity (Er): 4.2
	
	Approximate coupled microstrip line impedance = 90.5 Ohms (+/- 10% tolerance)