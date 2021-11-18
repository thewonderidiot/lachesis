EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 12 64
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 9650 5800 2    50   Output ~ 0
STR[1..12]
Text Notes 7750 1550 2    50   ~ 0
Strand Select
$Sheet
S 1000 1600 850  200 
U 62A035A1
F0 "40522" 50
F1 "filtered_14v.sch" 50
F2 "14V" O R 1850 1700 50 
$EndSheet
Text Label 2200 1700 2    50   ~ 0
BPLSWZ
Text HLabel 1300 4600 0    50   Input ~ 0
ROPER
$Comp
L Device:R_US R69
U 1 1 62A148A0
P 2350 3950
F 0 "R69" H 2418 3996 50  0000 L CNN
F 1 "5.1k" H 2418 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2390 3940 50  0001 C CNN
F 3 "~" H 2350 3950 50  0001 C CNN
	1    2350 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 4100 2350 4250
$Comp
L Device:R_US R68
U 1 1 62A15C7F
P 2350 3500
F 0 "R68" H 2418 3546 50  0000 L CNN
F 1 "5.1k" H 2418 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2390 3490 50  0001 C CNN
F 3 "~" H 2350 3500 50  0001 C CNN
	1    2350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3650 2350 3750
Wire Wire Line
	2350 3250 2350 3350
$Comp
L Device:Q_PNP_BEC Q2
U 1 1 62A187F9
P 2850 3750
F 0 "Q2" H 3041 3796 50  0000 L CNN
F 1 "MMBT2907" H 3041 3705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3050 3850 50  0001 C CNN
F 3 "~" H 2850 3750 50  0001 C CNN
	1    2850 3750
	1    0    0    1   
$EndComp
Wire Wire Line
	2350 3750 2650 3750
Connection ~ 2350 3750
Wire Wire Line
	2350 3750 2350 3800
Wire Wire Line
	2950 3500 2950 3550
Wire Wire Line
	2350 3250 2950 3250
Wire Wire Line
	2950 3250 2950 3300
$Comp
L Device:R_US R70
U 1 1 62A1D3D0
P 2950 4150
F 0 "R70" H 3018 4196 50  0000 L CNN
F 1 "680" H 3018 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2990 4140 50  0001 C CNN
F 3 "~" H 2950 4150 50  0001 C CNN
	1    2950 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3950 2950 4000
$Comp
L Device:R_US R71
U 1 1 62A1E7F4
P 2950 4700
F 0 "R71" H 3018 4746 50  0000 L CNN
F 1 "5.1k" H 3018 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2990 4690 50  0001 C CNN
F 3 "~" H 2950 4700 50  0001 C CNN
	1    2950 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small_ALT D2
U 1 1 62A20056
P 2950 3400
F 0 "D2" V 2996 3330 50  0000 R CNN
F 1 "1N4148" V 2905 3330 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" V 2950 3400 50  0001 C CNN
F 3 "~" V 2950 3400 50  0001 C CNN
	1    2950 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small_ALT D3
U 1 1 62A2288B
P 3400 4550
F 0 "D3" V 3446 4480 50  0000 R CNN
F 1 "1N4148" V 3355 4480 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" V 3400 4550 50  0001 C CNN
F 3 "~" V 3400 4550 50  0001 C CNN
	1    3400 4550
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small_ALT D4
U 1 1 62A23573
P 3400 4800
F 0 "D4" V 3446 4730 50  0000 R CNN
F 1 "1N4148" V 3355 4730 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" V 3400 4800 50  0001 C CNN
F 3 "~" V 3400 4800 50  0001 C CNN
	1    3400 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small_ALT D5
U 1 1 62A23995
P 3400 5050
F 0 "D5" V 3446 4980 50  0000 R CNN
F 1 "1N4148" V 3355 4980 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" V 3400 5050 50  0001 C CNN
F 3 "~" V 3400 5050 50  0001 C CNN
	1    3400 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 4300 2950 4350
Wire Wire Line
	2950 4350 3400 4350
Wire Wire Line
	3400 4350 3400 4450
Connection ~ 2950 4350
Wire Wire Line
	2950 4350 2950 4550
Wire Wire Line
	2950 4850 2950 5300
Wire Wire Line
	2950 5300 3400 5300
Wire Wire Line
	3400 5300 3400 5150
Wire Wire Line
	3400 4950 3400 4900
Wire Wire Line
	3400 4700 3400 4650
$Comp
L Device:Q_NPN_BEC Q?
U 1 1 62A2691E
P 3900 4350
AR Path="/6183FAE6/6232C4EF/62A2691E" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623C263E/62A2691E" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623D514A/62A2691E" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623D5718/62A2691E" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623DF4E1/62A2691E" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623E7DB1/62A2691E" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623E7DC0/62A2691E" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/62A081E6/62A2691E" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/62A2691E" Ref="Q3"  Part="1" 
F 0 "Q3" H 4091 4396 50  0000 L CNN
F 1 "MMBT2222" H 4091 4305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4100 4450 50  0001 C CNN
F 3 "~" H 3900 4350 50  0001 C CNN
	1    3900 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4350 3400 4350
Connection ~ 3400 4350
$Comp
L Device:R_US R73
U 1 1 62A26DA3
P 4000 4750
F 0 "R73" H 4068 4796 50  0000 L CNN
F 1 "8.2" H 4068 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4040 4740 50  0001 C CNN
F 3 "~" H 4000 4750 50  0001 C CNN
	1    4000 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4600 4000 4550
$Comp
L Device:R_US R74
U 1 1 62A28434
P 4000 5100
F 0 "R74" H 4068 5146 50  0000 L CNN
F 1 "NOM" H 4068 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4040 5090 50  0001 C CNN
F 3 "~" H 4000 5100 50  0001 C CNN
	1    4000 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4950 4000 4900
Wire Wire Line
	3400 5300 4000 5300
Wire Wire Line
	4000 5300 4000 5250
Connection ~ 3400 5300
Wire Wire Line
	4000 4150 4000 4000
Wire Wire Line
	4000 4000 4550 4000
Text HLabel 4550 4000 2    50   Output ~ 0
MODR1
Text Notes 3550 4000 2    50   ~ 0
40361
$Comp
L Device:R_US R72
U 1 1 62A2D2DB
P 4000 3550
F 0 "R72" H 4068 3596 50  0000 L CNN
F 1 "3k" H 4068 3505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4040 3540 50  0001 C CNN
F 3 "~" H 4000 3550 50  0001 C CNN
	1    4000 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4000 4000 3700
Connection ~ 4000 4000
Wire Wire Line
	4000 3400 4000 3250
Wire Wire Line
	4000 3250 2950 3250
Connection ~ 2950 3250
$Sheet
S 6200 2450 700  350 
U 61886B73
F0 "40601a" 50
F1 "strand.sch" 50
F2 "PWR" I L 6200 2700 50 
F3 "STRn" O R 6900 2550 50 
F4 "SEn" I L 6200 2550 50 
$EndSheet
Wire Wire Line
	6900 2550 7200 2550
Text Label 6950 2550 0    50   ~ 0
STR1
Wire Wire Line
	5500 2550 6200 2550
Text Label 5550 2550 0    50   ~ 0
SE1
$Sheet
S 6200 3000 700  350 
U 6189F177
F0 "40601b" 50
F1 "strand.sch" 50
F2 "PWR" I L 6200 3250 50 
F3 "STRn" O R 6900 3100 50 
F4 "SEn" I L 6200 3100 50 
$EndSheet
Wire Wire Line
	6900 3100 7200 3100
Text Label 6950 3100 0    50   ~ 0
STR2
Wire Wire Line
	5500 3100 6200 3100
Text Label 5550 3100 0    50   ~ 0
SE2
$Sheet
S 6200 3550 700  350 
U 618A142B
F0 "40601c" 50
F1 "strand.sch" 50
F2 "PWR" I L 6200 3800 50 
F3 "STRn" O R 6900 3650 50 
F4 "SEn" I L 6200 3650 50 
$EndSheet
Wire Wire Line
	6900 3650 7200 3650
Text Label 6950 3650 0    50   ~ 0
STR3
Wire Wire Line
	5500 3650 6200 3650
Text Label 5550 3650 0    50   ~ 0
SE3
$Sheet
S 6200 4100 700  350 
U 618A143A
F0 "40601d" 50
F1 "strand.sch" 50
F2 "PWR" I L 6200 4350 50 
F3 "STRn" O R 6900 4200 50 
F4 "SEn" I L 6200 4200 50 
$EndSheet
Wire Wire Line
	6900 4200 7200 4200
Text Label 6950 4200 0    50   ~ 0
STR4
Wire Wire Line
	5500 4200 6200 4200
Text Label 5550 4200 0    50   ~ 0
SE4
$Sheet
S 6200 4650 700  350 
U 618A4047
F0 "40602a" 50
F1 "strand.sch" 50
F2 "PWR" I L 6200 4900 50 
F3 "STRn" O R 6900 4750 50 
F4 "SEn" I L 6200 4750 50 
$EndSheet
Wire Wire Line
	6900 4750 7200 4750
Text Label 6950 4750 0    50   ~ 0
STR5
Wire Wire Line
	5500 4750 6200 4750
Text Label 5550 4750 0    50   ~ 0
SE5
$Sheet
S 6200 5200 700  350 
U 618A4056
F0 "40602b" 50
F1 "strand.sch" 50
F2 "PWR" I L 6200 5450 50 
F3 "STRn" O R 6900 5300 50 
F4 "SEn" I L 6200 5300 50 
$EndSheet
Wire Wire Line
	6900 5300 7200 5300
Text Label 6950 5300 0    50   ~ 0
STR6
Wire Wire Line
	5500 5300 6200 5300
Text Label 5550 5300 0    50   ~ 0
SE6
$Sheet
S 8400 2450 700  350 
U 618A4065
F0 "40602c" 50
F1 "strand.sch" 50
F2 "PWR" I L 8400 2700 50 
F3 "STRn" O R 9100 2550 50 
F4 "SEn" I L 8400 2550 50 
$EndSheet
Wire Wire Line
	9100 2550 9400 2550
Text Label 9150 2550 0    50   ~ 0
STR7
Wire Wire Line
	7700 2550 8400 2550
Text Label 7750 2550 0    50   ~ 0
SE7
$Sheet
S 8400 3000 700  350 
U 618A4074
F0 "40602d" 50
F1 "strand.sch" 50
F2 "PWR" I L 8400 3250 50 
F3 "STRn" O R 9100 3100 50 
F4 "SEn" I L 8400 3100 50 
$EndSheet
Wire Wire Line
	9100 3100 9400 3100
Text Label 9150 3100 0    50   ~ 0
STR8
Wire Wire Line
	7700 3100 8400 3100
Text Label 7750 3100 0    50   ~ 0
SE8
$Sheet
S 8400 3550 700  350 
U 618ABD34
F0 "40603a" 50
F1 "strand.sch" 50
F2 "PWR" I L 8400 3800 50 
F3 "STRn" O R 9100 3650 50 
F4 "SEn" I L 8400 3650 50 
$EndSheet
Wire Wire Line
	9100 3650 9400 3650
Text Label 9150 3650 0    50   ~ 0
STR9
Wire Wire Line
	7700 3650 8400 3650
Text Label 7750 3650 0    50   ~ 0
SE9
$Sheet
S 8400 4100 700  350 
U 618ABD43
F0 "40603b" 50
F1 "strand.sch" 50
F2 "PWR" I L 8400 4350 50 
F3 "STRn" O R 9100 4200 50 
F4 "SEn" I L 8400 4200 50 
$EndSheet
Wire Wire Line
	9100 4200 9400 4200
Text Label 9150 4200 0    50   ~ 0
STR10
Wire Wire Line
	7700 4200 8400 4200
Text Label 7750 4200 0    50   ~ 0
SE10
$Sheet
S 8400 4650 700  350 
U 618ABD52
F0 "40603c" 50
F1 "strand.sch" 50
F2 "PWR" I L 8400 4900 50 
F3 "STRn" O R 9100 4750 50 
F4 "SEn" I L 8400 4750 50 
$EndSheet
Wire Wire Line
	9100 4750 9400 4750
Text Label 9150 4750 0    50   ~ 0
STR11
Wire Wire Line
	7700 4750 8400 4750
Text Label 7750 4750 0    50   ~ 0
SE11
$Sheet
S 8400 5200 700  350 
U 618ABD61
F0 "40603d" 50
F1 "strand.sch" 50
F2 "PWR" I L 8400 5450 50 
F3 "STRn" O R 9100 5300 50 
F4 "SEn" I L 8400 5300 50 
$EndSheet
Wire Wire Line
	9100 5300 9400 5300
Text Label 9150 5300 0    50   ~ 0
STR12
Wire Wire Line
	7700 5300 8400 5300
Text Label 7750 5300 0    50   ~ 0
SE12
Wire Wire Line
	2350 1700 2350 3250
Wire Wire Line
	1850 1700 2350 1700
Connection ~ 2350 3250
Wire Wire Line
	8250 5450 8400 5450
Wire Wire Line
	8400 4900 8250 4900
Connection ~ 8250 4900
Wire Wire Line
	8250 4900 8250 5450
Wire Wire Line
	8400 4350 8250 4350
Connection ~ 8250 4350
Wire Wire Line
	8250 4350 8250 4900
Wire Wire Line
	8400 3800 8250 3800
Connection ~ 8250 3800
Wire Wire Line
	8250 3800 8250 4350
Wire Wire Line
	8400 3250 8250 3250
Connection ~ 8250 3250
Wire Wire Line
	8250 3250 8250 3800
Wire Wire Line
	8400 2700 8250 2700
Connection ~ 8250 2700
Wire Wire Line
	8250 2700 8250 3250
Wire Wire Line
	6200 5450 6050 5450
Wire Wire Line
	6200 4900 6050 4900
Connection ~ 6050 4900
Wire Wire Line
	6050 4900 6050 5450
Wire Wire Line
	6200 4350 6050 4350
Connection ~ 6050 4350
Wire Wire Line
	6050 4350 6050 4900
Wire Wire Line
	6200 3800 6050 3800
Connection ~ 6050 3800
Wire Wire Line
	6050 3800 6050 4350
Wire Wire Line
	6200 3250 6050 3250
Connection ~ 6050 3250
Wire Wire Line
	6050 3250 6050 3800
Wire Wire Line
	6200 2700 6050 2700
Connection ~ 6050 2700
Wire Wire Line
	6050 2700 6050 3250
Text Notes 3500 2950 2    50   ~ 0
Module Select
Entry Wire Line
	7300 5400 7200 5300
Entry Wire Line
	7300 4850 7200 4750
Entry Wire Line
	7300 4300 7200 4200
Entry Wire Line
	7300 3750 7200 3650
Entry Wire Line
	7300 3200 7200 3100
Entry Wire Line
	7300 2650 7200 2550
Entry Wire Line
	9500 5400 9400 5300
Entry Wire Line
	9500 4850 9400 4750
Entry Wire Line
	9500 4300 9400 4200
Entry Wire Line
	9500 3750 9400 3650
Entry Wire Line
	9500 3200 9400 3100
Entry Wire Line
	9500 2650 9400 2550
Wire Bus Line
	5400 2200 5250 2200
Entry Wire Line
	7600 5200 7700 5300
Entry Wire Line
	7600 4650 7700 4750
Entry Wire Line
	7600 4100 7700 4200
Entry Wire Line
	7600 3550 7700 3650
Entry Wire Line
	7600 3000 7700 3100
Entry Wire Line
	7600 2450 7700 2550
Entry Wire Line
	5400 5200 5500 5300
Entry Wire Line
	5400 4650 5500 4750
Entry Wire Line
	5400 4100 5500 4200
Entry Wire Line
	5400 3550 5500 3650
Entry Wire Line
	5400 3000 5500 3100
Entry Wire Line
	5400 2450 5500 2550
Text HLabel 5250 2200 0    50   Input ~ 0
SE[1..12]
$Comp
L Device:R_US R?
U 1 1 639CC993
P 1550 4600
AR Path="/6183FAE6/6232C4EF/639CC993" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623C263E/639CC993" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623D514A/639CC993" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623D5718/639CC993" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623DF4E1/639CC993" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623E7DB1/639CC993" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623E7DC0/639CC993" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/62A081E6/639CC993" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/61899537/639CC993" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/6189F17F/639CC993" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/618A1433/639CC993" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/618A1442/639CC993" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/618A404F/639CC993" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/618A405E/639CC993" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/618A406D/639CC993" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/618A407C/639CC993" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/618ABD3C/639CC993" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/618ABD4B/639CC993" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/618ABD5A/639CC993" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/618ABD69/639CC993" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/639CC993" Ref="R67"  Part="1" 
F 0 "R67" V 1345 4600 50  0000 C CNN
F 1 "1k" V 1436 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1590 4590 50  0001 C CNN
F 3 "~" H 1550 4600 50  0001 C CNN
	1    1550 4600
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NPN_BEC Q?
U 1 1 639CC999
P 1950 4600
AR Path="/6183FAE6/6232C4EF/639CC999" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623C263E/639CC999" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623D514A/639CC999" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623D5718/639CC999" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623DF4E1/639CC999" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623E7DB1/639CC999" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623E7DC0/639CC999" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/62A081E6/639CC999" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/61899537/639CC999" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/6189F17F/639CC999" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/618A1433/639CC999" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/618A1442/639CC999" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/618A404F/639CC999" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/618A405E/639CC999" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/618A406D/639CC999" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/618A407C/639CC999" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/618ABD3C/639CC999" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/618ABD4B/639CC999" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/618ABD5A/639CC999" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/618ABD69/639CC999" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/639CC999" Ref="Q1"  Part="1" 
F 0 "Q1" H 2141 4646 50  0000 L CNN
F 1 "MMBT2222" H 2141 4555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2150 4700 50  0001 C CNN
F 3 "~" H 1950 4600 50  0001 C CNN
	1    1950 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4600 1750 4600
Wire Wire Line
	1300 4600 1400 4600
Wire Wire Line
	2050 4400 2050 4250
Wire Wire Line
	2050 4250 2350 4250
$Comp
L Device:D_ALT D?
U 1 1 639CC9A3
P 2050 5000
AR Path="/64D2DF1E/62A081E6/639CC9A3" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/61899537/639CC9A3" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/6189F17F/639CC9A3" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/618A1433/639CC9A3" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/618A1442/639CC9A3" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/618A404F/639CC9A3" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/618A405E/639CC9A3" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/618A406D/639CC9A3" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/618A407C/639CC9A3" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/618ABD3C/639CC9A3" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/618ABD4B/639CC9A3" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/618ABD5A/639CC9A3" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/618ABD69/639CC9A3" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/639CC9A3" Ref="D1"  Part="1" 
F 0 "D1" V 2096 4920 50  0000 R CNN
F 1 "1N4148" V 2005 4920 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" H 2050 5000 50  0001 C CNN
F 3 "~" H 2050 5000 50  0001 C CNN
	1    2050 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 4800 2050 4850
Wire Wire Line
	2050 5150 2050 5200
$Comp
L power:GND #PWR?
U 1 1 639CC9AB
P 2050 5200
AR Path="/64D2DF1E/62A081E6/639CC9AB" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/61899537/639CC9AB" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/6189F17F/639CC9AB" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/618A1433/639CC9AB" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/618A1442/639CC9AB" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/618A404F/639CC9AB" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/618A405E/639CC9AB" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/618A406D/639CC9AB" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/618A407C/639CC9AB" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/618ABD3C/639CC9AB" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/618ABD4B/639CC9AB" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/618ABD5A/639CC9AB" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/618ABD69/639CC9AB" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/639CC9AB" Ref="#PWR055"  Part="1" 
F 0 "#PWR055" H 2050 4950 50  0001 C CNN
F 1 "GND" H 2055 5027 50  0000 C CNN
F 2 "" H 2050 5200 50  0001 C CNN
F 3 "" H 2050 5200 50  0001 C CNN
	1    2050 5200
	1    0    0    -1  
$EndComp
Text Label 2100 4250 0    50   ~ 0
RPR
Wire Bus Line
	5400 2200 7600 2200
Connection ~ 5400 2200
Wire Wire Line
	2350 1700 6050 1700
Wire Wire Line
	6050 1700 6050 2700
Connection ~ 2350 1700
Wire Wire Line
	6050 1700 8250 1700
Wire Wire Line
	8250 1700 8250 2700
Connection ~ 6050 1700
Wire Bus Line
	7300 5800 9500 5800
Connection ~ 9500 5800
Wire Bus Line
	9500 5800 9650 5800
$Comp
L power:GND #PWR056
U 1 1 63A4B88B
P 4000 5350
F 0 "#PWR056" H 4000 5100 50  0001 C CNN
F 1 "GND" H 4005 5177 50  0000 C CNN
F 2 "" H 4000 5350 50  0001 C CNN
F 3 "" H 4000 5350 50  0001 C CNN
	1    4000 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5350 4000 5300
Connection ~ 4000 5300
Wire Bus Line
	7300 2650 7300 5800
Wire Bus Line
	9500 2650 9500 5800
Wire Bus Line
	7600 2200 7600 5200
Wire Bus Line
	5400 2200 5400 5200
$EndSCHEMATC