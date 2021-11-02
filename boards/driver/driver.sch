EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLedger 17000 11000
encoding utf-8
Sheet 1 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3250 1550 1150 600 
U 61EC7443
F0 "Sense Amplifiers" 50
F1 "sense_amps.sch" 50
F2 "SBF" I L 3250 1950 50 
F3 "GAR[01..16]" I L 3250 1700 50 
F4 "GBR[01..16]" I L 3250 1800 50 
F5 "SA[01..16]" O R 4400 1700 50 
$EndSheet
$Sheet
S 6600 1150 1250 1150
U 64D2DF1E
F0 "Strand Select and Return" 50
F1 "strand_select_return.sch" 50
F2 "STEN[01..12]" I L 6600 1250 50 
F3 "STR[01..12]" O R 7850 1250 50 
F4 "SETRN[0..1]" O R 7850 1450 50 
F5 "XSET[0..1]" O R 7850 2000 50 
F6 "RSTRD[0..3]" O R 7850 1550 50 
F7 "XRSTN[0..3]" O R 7850 2100 50 
F8 "RFD[01..08]" O R 7850 1650 50 
F9 "RCD[01..08]" O R 7850 1750 50 
$EndSheet
$Sheet
S 6600 2600 1250 950 
U 6183FAE6
F0 "Current Drivers" 50
F1 "current_drivers.sch" 50
F2 "MODR1" O R 7850 2700 50 
F3 "ROPER" I L 6600 2700 50 
F4 "SET[0..1]" I L 6600 2900 50 
F5 "XSET[0..1]" O R 7850 2900 50 
F6 "RESET[0..3]" I L 6600 3000 50 
F7 "XRST[0..3]" O R 7850 3000 50 
F8 "~IL[01..08]" I L 6600 3350 50 
F9 "IL[01..08]" I L 6600 3250 50 
F10 "XFN[01..08]" O R 7850 3250 50 
F11 "XCN[01..08]" O R 7850 3350 50 
$EndSheet
Wire Bus Line
	7850 2000 8050 2000
Wire Bus Line
	8050 2000 8050 2900
Wire Bus Line
	8050 2900 7850 2900
Wire Bus Line
	7850 2100 7950 2100
Wire Bus Line
	7950 2100 7950 3000
Wire Bus Line
	7950 3000 7850 3000
$Sheet
S 4750 1550 1150 850 
U 652D8F7B
F0 "FPGA and Power" 50
F1 "fpga_power.sch" 50
F2 "SA[01..16]" I L 4750 1700 50 
F3 "STEN[01..12]" O R 5900 1700 50 
$EndSheet
Wire Bus Line
	4400 1700 4750 1700
Wire Bus Line
	5900 1700 6200 1700
Wire Bus Line
	6200 1700 6200 1250
Wire Bus Line
	6200 1250 6600 1250
$EndSCHEMATC
