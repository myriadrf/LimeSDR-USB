Board Description
-----------------

board designation           : LimeSDR
board version		        : v1.2s
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
	- LimeSDR_1v2s.DRR -> Drill report detailing the tool assignments, hole sizes, hole count and tool travel. 
   
	- Throughole vias are covered in the following files:
   								File Name																	Start Layer						Stop Layer
						LimeSDR_1v2s-RoundHoles.TXT															Top									Bottom
	- Slotholes are covered in the following files:
						LimeSDR_1v2s-SlotHoles.TXT															Top									Bottom	
						
	- IMPORTANT! Hole diameters are final manufactured diameters INCLUDING HOLE METALIZATION.
	
Gerber files
---------------

			File Name					Layer/Comment
		LimeSDR_1v2s.GTL				Top (Signal)
		LimeSDR_1v2s.G1				L2  (Signal)
		LimeSDR_1v2s.G2				L3  (Signal)
		LimeSDR_1v2s.G3				L4  (Signal)
		LimeSDR_1v2s.G4				L5  (Signal)
		LimeSDR_1v2s.G5				L6  (Signal)
		LimeSDR_1v2s.G6				L7  (Signal)	
		LimeSDR_1v2s.G7				L8  (Signal)
		LimeSDR_1v2s.G8				L9  (Signal)
		LimeSDR_1v2s.G9				L10 (Signal)
		LimeSDR_1v2s.G10				L11 (Signal)
		LimeSDR_1v2s.GBL				Bottom (Signal)

		 
		LimeSDR_1v2s.GPB				Bottom Pad Master
		LimeSDR_1v2s.GPT				Top Pad Master

		LimeSDR_1v2s.GTO				Top Overlay
		LimeSDR_1v2s.GTP				Top Paste
		LimeSDR_1v2s.GTS				Top Solder

 
		LimeSDR_1v2s.GBS				Bottom Solder
		LimeSDR_1v2s.GBP				Bottom Paste
		LimeSDR_1v2s.GBO				Bottom Overlay


		LimeSDR_1v2s.GM1				Mechanical 1 (Board Cutout)


		LimeSDR_1v2s.GM14				ASM BOT (Assembly bottom)
		LimeSDR_1v2s.GM15				ASM TOP (Assembly top)
		
  
Important Notes
---------------
0.35mm ring and 0.2mm drill via-in-pads must be resin filled with metal cap (IC1).

IC1 thermal pad vias must NOT be resin filled with metal cap.

DRCs must be run on Gerber files before building boards.

All through hole vias may be plated shut.

Solder mask : dark blue, both sides, halogen free, glossy finish (NOT matte).

Silkscreen : white epoxy ink, halogen free, both sides. No silkscreen on pads.

Electrical test : 100 % netlist.

Boards are to be individually bagged.

Design software used:  Altium Designer 15.0 

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
	
  * 50 Ohm microstrip line (Top layer) characteristics:
    Top layer copper foil thickness: 17.5 um
	Track width = 0.309 mm (12.16 mils)
	Track width/spacing ratio = 1.786
	Dielectric thickness from top to L2 = 173um (6.8 mils)
	Dielectric between Top layer and 2nd layer relative permittivity (Er): 4.2
	
	Approximate microstrip line impedance = 49.9998 Ohms (+/- 10% tolerance)
	
  * 90 Ohm coupled microstrip line (Top layer) characteristics:
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