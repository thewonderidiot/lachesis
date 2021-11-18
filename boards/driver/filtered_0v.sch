EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 66 64
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L lachesis:+14V #PWR0121
U 1 1 62980B09
P 4150 3450
AR Path="/6183FAE6/62980982/62980B09" Ref="#PWR0121"  Part="1" 
AR Path="/6183FAE6/6299B990/62980B09" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 4150 3300 50  0001 C CNN
F 1 "+14V" H 4165 3623 50  0000 C CNN
F 2 "" H 4150 3450 50  0001 C CNN
F 3 "" H 4150 3450 50  0001 C CNN
	1    4150 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R249
U 1 1 62981703
P 4600 3600
AR Path="/6183FAE6/62980982/62981703" Ref="R249"  Part="1" 
AR Path="/6183FAE6/6299B990/62981703" Ref="R250"  Part="1" 
F 0 "R250" V 4395 3600 50  0000 C CNN
F 1 "3k" V 4486 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4640 3590 50  0001 C CNN
F 3 "~" H 4600 3600 50  0001 C CNN
	1    4600 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 3450 4150 3500
Wire Wire Line
	4150 3500 4300 3500
Wire Wire Line
	4300 3500 4300 3600
Wire Wire Line
	4300 3600 4450 3600
$Comp
L Device:D_ALT D150
U 1 1 629820FD
P 5100 3600
AR Path="/6183FAE6/62980982/629820FD" Ref="D150"  Part="1" 
AR Path="/6183FAE6/6299B990/629820FD" Ref="D151"  Part="1" 
F 0 "D151" H 5100 3383 50  0000 C CNN
F 1 "1N4148" H 5100 3474 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323" H 5100 3600 50  0001 C CNN
F 3 "~" H 5100 3600 50  0001 C CNN
	1    5100 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 3600 4850 3600
Wire Wire Line
	4850 3600 4850 4000
Wire Wire Line
	4850 4000 4200 4000
Connection ~ 4850 3600
Wire Wire Line
	4850 3600 4750 3600
Text HLabel 4200 4000 0    50   Output ~ 0
0V
Wire Wire Line
	4850 4000 4950 4000
Connection ~ 4850 4000
Wire Wire Line
	5250 4000 5400 4000
Wire Wire Line
	5400 4000 5400 3600
Wire Wire Line
	5400 3600 5250 3600
Wire Wire Line
	5400 3600 5650 3600
Wire Wire Line
	5650 3600 5650 3650
Connection ~ 5400 3600
$Comp
L power:GND #PWR0122
U 1 1 629836D4
P 5650 3650
AR Path="/6183FAE6/62980982/629836D4" Ref="#PWR0122"  Part="1" 
AR Path="/6183FAE6/6299B990/629836D4" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 5650 3400 50  0001 C CNN
F 1 "GND" H 5655 3477 50  0000 C CNN
F 2 "" H 5650 3650 50  0001 C CNN
F 3 "" H 5650 3650 50  0001 C CNN
	1    5650 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C46
U 1 1 628500B5
P 5100 4000
AR Path="/6183FAE6/6299B990/628500B5" Ref="C46"  Part="1" 
AR Path="/6183FAE6/62980982/628500B5" Ref="C45"  Part="1" 
F 0 "C46" V 5352 4000 50  0000 C CNN
F 1 "1.0uF" V 5261 4000 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 5100 4000 50  0001 C CNN
F 3 "~" H 5100 4000 50  0001 C CNN
	1    5100 4000
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
