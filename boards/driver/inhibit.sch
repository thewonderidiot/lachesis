EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 32 69
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
L Device:R_US R?
U 1 1 62448373
P 3650 3550
AR Path="/6183FAE6/6232C4EF/62448373" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623C263E/62448373" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623D514A/62448373" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623D5718/62448373" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623DF4E1/62448373" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623E7DB1/62448373" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623E7DC0/62448373" Ref="R?"  Part="1" 
AR Path="/6183FAE6/62442CC1/62448373" Ref="R167"  Part="1" 
AR Path="/6183FAE6/62464AF7/62448373" Ref="R164"  Part="1" 
AR Path="/6183FAE6/6247B051/62448373" Ref="R161"  Part="1" 
AR Path="/6183FAE6/6247B057/62448373" Ref="R158"  Part="1" 
AR Path="/6183FAE6/62482DEF/62448373" Ref="R155"  Part="1" 
AR Path="/6183FAE6/62482DF5/62448373" Ref="R152"  Part="1" 
AR Path="/6183FAE6/62482E09/62448373" Ref="R149"  Part="1" 
AR Path="/6183FAE6/62482E0F/62448373" Ref="R?"  Part="1" 
AR Path="/6183FAE6/62495C8E/62448373" Ref="R146"  Part="1" 
AR Path="/6183FAE6/624B829C/62448373" Ref="R143"  Part="1" 
AR Path="/6183FAE6/624B82A2/62448373" Ref="R140"  Part="1" 
AR Path="/6183FAE6/624B82B6/62448373" Ref="R137"  Part="1" 
AR Path="/6183FAE6/624B82BC/62448373" Ref="R134"  Part="1" 
AR Path="/6183FAE6/624B82D0/62448373" Ref="R131"  Part="1" 
AR Path="/6183FAE6/624B82D6/62448373" Ref="R128"  Part="1" 
AR Path="/6183FAE6/624B82E8/62448373" Ref="R125"  Part="1" 
AR Path="/6183FAE6/624B82F7/62448373" Ref="R122"  Part="1" 
F 0 "R167" V 3445 3550 50  0000 C CNN
F 1 "500" V 3536 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3690 3540 50  0001 C CNN
F 3 "~" H 3650 3550 50  0001 C CNN
	1    3650 3550
	0    1    1    0   
$EndComp
Text HLabel 2950 3550 0    50   Input ~ 0
IN
$Comp
L Device:Q_NPN_BEC Q?
U 1 1 6244837A
P 4100 3550
AR Path="/6183FAE6/6232C4EF/6244837A" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623C263E/6244837A" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623D514A/6244837A" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623D5718/6244837A" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623DF4E1/6244837A" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623E7DB1/6244837A" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623E7DC0/6244837A" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/62442CC1/6244837A" Ref="Q58"  Part="1" 
AR Path="/6183FAE6/62464AF7/6244837A" Ref="Q56"  Part="1" 
AR Path="/6183FAE6/6247B051/6244837A" Ref="Q54"  Part="1" 
AR Path="/6183FAE6/6247B057/6244837A" Ref="Q52"  Part="1" 
AR Path="/6183FAE6/62482DEF/6244837A" Ref="Q50"  Part="1" 
AR Path="/6183FAE6/62482DF5/6244837A" Ref="Q48"  Part="1" 
AR Path="/6183FAE6/62482E09/6244837A" Ref="Q46"  Part="1" 
AR Path="/6183FAE6/62482E0F/6244837A" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/62495C8E/6244837A" Ref="Q44"  Part="1" 
AR Path="/6183FAE6/624B829C/6244837A" Ref="Q42"  Part="1" 
AR Path="/6183FAE6/624B82A2/6244837A" Ref="Q40"  Part="1" 
AR Path="/6183FAE6/624B82B6/6244837A" Ref="Q38"  Part="1" 
AR Path="/6183FAE6/624B82BC/6244837A" Ref="Q36"  Part="1" 
AR Path="/6183FAE6/624B82D0/6244837A" Ref="Q34"  Part="1" 
AR Path="/6183FAE6/624B82D6/6244837A" Ref="Q32"  Part="1" 
AR Path="/6183FAE6/624B82E8/6244837A" Ref="Q30"  Part="1" 
AR Path="/6183FAE6/624B82F7/6244837A" Ref="Q28"  Part="1" 
F 0 "Q58" H 4291 3596 50  0000 L CNN
F 1 "MMBT2222" H 4291 3505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4300 3650 50  0001 C CNN
F 3 "~" H 4100 3550 50  0001 C CNN
	1    4100 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3550 3900 3550
Wire Wire Line
	4200 3750 4200 3950
Wire Wire Line
	4200 3950 2950 3950
Text HLabel 3600 2500 0    50   Input ~ 0
PWR
Wire Wire Line
	2950 3550 3500 3550
$Comp
L Device:D_Small_ALT D?
U 1 1 624483C4
P 4800 3850
AR Path="/6183FAE6/6232C4EF/624483C4" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623C263E/624483C4" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623D514A/624483C4" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623D5718/624483C4" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623DF4E1/624483C4" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623E7DB1/624483C4" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623E7DC0/624483C4" Ref="D?"  Part="1" 
AR Path="/6183FAE6/62442CC1/624483C4" Ref="D92"  Part="1" 
AR Path="/6183FAE6/62464AF7/624483C4" Ref="D88"  Part="1" 
AR Path="/6183FAE6/6247B051/624483C4" Ref="D84"  Part="1" 
AR Path="/6183FAE6/6247B057/624483C4" Ref="D80"  Part="1" 
AR Path="/6183FAE6/62482DEF/624483C4" Ref="D76"  Part="1" 
AR Path="/6183FAE6/62482DF5/624483C4" Ref="D72"  Part="1" 
AR Path="/6183FAE6/62482E09/624483C4" Ref="D68"  Part="1" 
AR Path="/6183FAE6/62482E0F/624483C4" Ref="D?"  Part="1" 
AR Path="/6183FAE6/62495C8E/624483C4" Ref="D64"  Part="1" 
AR Path="/6183FAE6/624B829C/624483C4" Ref="D60"  Part="1" 
AR Path="/6183FAE6/624B82A2/624483C4" Ref="D56"  Part="1" 
AR Path="/6183FAE6/624B82B6/624483C4" Ref="D52"  Part="1" 
AR Path="/6183FAE6/624B82BC/624483C4" Ref="D48"  Part="1" 
AR Path="/6183FAE6/624B82D0/624483C4" Ref="D44"  Part="1" 
AR Path="/6183FAE6/624B82D6/624483C4" Ref="D40"  Part="1" 
AR Path="/6183FAE6/624B82E8/624483C4" Ref="D36"  Part="1" 
AR Path="/6183FAE6/624B82F7/624483C4" Ref="D32"  Part="1" 
F 0 "D92" V 4846 3780 50  0000 R CNN
F 1 "1N4148" V 4755 3780 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" V 4800 3850 50  0001 C CNN
F 3 "~" V 4800 3850 50  0001 C CNN
	1    4800 3850
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small_ALT D?
U 1 1 624483CA
P 4800 3600
AR Path="/6183FAE6/6232C4EF/624483CA" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623C263E/624483CA" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623D514A/624483CA" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623D5718/624483CA" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623DF4E1/624483CA" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623E7DB1/624483CA" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623E7DC0/624483CA" Ref="D?"  Part="1" 
AR Path="/6183FAE6/62442CC1/624483CA" Ref="D91"  Part="1" 
AR Path="/6183FAE6/62464AF7/624483CA" Ref="D87"  Part="1" 
AR Path="/6183FAE6/6247B051/624483CA" Ref="D83"  Part="1" 
AR Path="/6183FAE6/6247B057/624483CA" Ref="D79"  Part="1" 
AR Path="/6183FAE6/62482DEF/624483CA" Ref="D75"  Part="1" 
AR Path="/6183FAE6/62482DF5/624483CA" Ref="D71"  Part="1" 
AR Path="/6183FAE6/62482E09/624483CA" Ref="D67"  Part="1" 
AR Path="/6183FAE6/62482E0F/624483CA" Ref="D?"  Part="1" 
AR Path="/6183FAE6/62495C8E/624483CA" Ref="D63"  Part="1" 
AR Path="/6183FAE6/624B829C/624483CA" Ref="D59"  Part="1" 
AR Path="/6183FAE6/624B82A2/624483CA" Ref="D55"  Part="1" 
AR Path="/6183FAE6/624B82B6/624483CA" Ref="D51"  Part="1" 
AR Path="/6183FAE6/624B82BC/624483CA" Ref="D47"  Part="1" 
AR Path="/6183FAE6/624B82D0/624483CA" Ref="D43"  Part="1" 
AR Path="/6183FAE6/624B82D6/624483CA" Ref="D39"  Part="1" 
AR Path="/6183FAE6/624B82E8/624483CA" Ref="D35"  Part="1" 
AR Path="/6183FAE6/624B82F7/624483CA" Ref="D31"  Part="1" 
F 0 "D91" V 4846 3530 50  0000 R CNN
F 1 "1N4148" V 4755 3530 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" V 4800 3600 50  0001 C CNN
F 3 "~" V 4800 3600 50  0001 C CNN
	1    4800 3600
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small_ALT D?
U 1 1 624483D0
P 4800 3350
AR Path="/6183FAE6/6232C4EF/624483D0" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623C263E/624483D0" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623D514A/624483D0" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623D5718/624483D0" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623DF4E1/624483D0" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623E7DB1/624483D0" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623E7DC0/624483D0" Ref="D?"  Part="1" 
AR Path="/6183FAE6/62442CC1/624483D0" Ref="D90"  Part="1" 
AR Path="/6183FAE6/62464AF7/624483D0" Ref="D86"  Part="1" 
AR Path="/6183FAE6/6247B051/624483D0" Ref="D82"  Part="1" 
AR Path="/6183FAE6/6247B057/624483D0" Ref="D78"  Part="1" 
AR Path="/6183FAE6/62482DEF/624483D0" Ref="D74"  Part="1" 
AR Path="/6183FAE6/62482DF5/624483D0" Ref="D70"  Part="1" 
AR Path="/6183FAE6/62482E09/624483D0" Ref="D66"  Part="1" 
AR Path="/6183FAE6/62482E0F/624483D0" Ref="D?"  Part="1" 
AR Path="/6183FAE6/62495C8E/624483D0" Ref="D62"  Part="1" 
AR Path="/6183FAE6/624B829C/624483D0" Ref="D58"  Part="1" 
AR Path="/6183FAE6/624B82A2/624483D0" Ref="D54"  Part="1" 
AR Path="/6183FAE6/624B82B6/624483D0" Ref="D50"  Part="1" 
AR Path="/6183FAE6/624B82BC/624483D0" Ref="D46"  Part="1" 
AR Path="/6183FAE6/624B82D0/624483D0" Ref="D42"  Part="1" 
AR Path="/6183FAE6/624B82D6/624483D0" Ref="D38"  Part="1" 
AR Path="/6183FAE6/624B82E8/624483D0" Ref="D34"  Part="1" 
AR Path="/6183FAE6/624B82F7/624483D0" Ref="D30"  Part="1" 
F 0 "D90" V 4846 3280 50  0000 R CNN
F 1 "1N4148" V 4755 3280 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" V 4800 3350 50  0001 C CNN
F 3 "~" V 4800 3350 50  0001 C CNN
	1    4800 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 3450 4800 3500
Wire Wire Line
	4800 3700 4800 3750
Wire Wire Line
	4800 3200 4800 3250
Wire Wire Line
	5350 4150 5350 4200
$Comp
L power:GND #PWR?
U 1 1 624483EF
P 5350 4450
AR Path="/6183FAE6/6232C4EF/624483EF" Ref="#PWR?"  Part="1" 
AR Path="/6183FAE6/623C263E/624483EF" Ref="#PWR?"  Part="1" 
AR Path="/6183FAE6/623D514A/624483EF" Ref="#PWR?"  Part="1" 
AR Path="/6183FAE6/623D5718/624483EF" Ref="#PWR?"  Part="1" 
AR Path="/6183FAE6/623DF4E1/624483EF" Ref="#PWR?"  Part="1" 
AR Path="/6183FAE6/623E7DB1/624483EF" Ref="#PWR?"  Part="1" 
AR Path="/6183FAE6/623E7DC0/624483EF" Ref="#PWR?"  Part="1" 
AR Path="/6183FAE6/62442CC1/624483EF" Ref="#PWR077"  Part="1" 
AR Path="/6183FAE6/62464AF7/624483EF" Ref="#PWR076"  Part="1" 
AR Path="/6183FAE6/6247B051/624483EF" Ref="#PWR075"  Part="1" 
AR Path="/6183FAE6/6247B057/624483EF" Ref="#PWR074"  Part="1" 
AR Path="/6183FAE6/62482DEF/624483EF" Ref="#PWR073"  Part="1" 
AR Path="/6183FAE6/62482DF5/624483EF" Ref="#PWR072"  Part="1" 
AR Path="/6183FAE6/62482E09/624483EF" Ref="#PWR071"  Part="1" 
AR Path="/6183FAE6/62482E0F/624483EF" Ref="#PWR?"  Part="1" 
AR Path="/6183FAE6/62495C8E/624483EF" Ref="#PWR070"  Part="1" 
AR Path="/6183FAE6/624B829C/624483EF" Ref="#PWR069"  Part="1" 
AR Path="/6183FAE6/624B82A2/624483EF" Ref="#PWR068"  Part="1" 
AR Path="/6183FAE6/624B82B6/624483EF" Ref="#PWR067"  Part="1" 
AR Path="/6183FAE6/624B82BC/624483EF" Ref="#PWR066"  Part="1" 
AR Path="/6183FAE6/624B82D0/624483EF" Ref="#PWR065"  Part="1" 
AR Path="/6183FAE6/624B82D6/624483EF" Ref="#PWR064"  Part="1" 
AR Path="/6183FAE6/624B82E8/624483EF" Ref="#PWR063"  Part="1" 
AR Path="/6183FAE6/624B82F7/624483EF" Ref="#PWR062"  Part="1" 
F 0 "#PWR077" H 5350 4200 50  0001 C CNN
F 1 "GND" H 5355 4277 50  0000 C CNN
F 2 "" H 5350 4450 50  0001 C CNN
F 3 "" H 5350 4450 50  0001 C CNN
	1    5350 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BEC Q?
U 1 1 624483F5
P 5250 3200
AR Path="/6183FAE6/6232C4EF/624483F5" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623C263E/624483F5" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623D514A/624483F5" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623D5718/624483F5" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623DF4E1/624483F5" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623E7DB1/624483F5" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623E7DC0/624483F5" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/62442CC1/624483F5" Ref="Q59"  Part="1" 
AR Path="/6183FAE6/62464AF7/624483F5" Ref="Q57"  Part="1" 
AR Path="/6183FAE6/6247B051/624483F5" Ref="Q55"  Part="1" 
AR Path="/6183FAE6/6247B057/624483F5" Ref="Q53"  Part="1" 
AR Path="/6183FAE6/62482DEF/624483F5" Ref="Q51"  Part="1" 
AR Path="/6183FAE6/62482DF5/624483F5" Ref="Q49"  Part="1" 
AR Path="/6183FAE6/62482E09/624483F5" Ref="Q47"  Part="1" 
AR Path="/6183FAE6/62482E0F/624483F5" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/62495C8E/624483F5" Ref="Q45"  Part="1" 
AR Path="/6183FAE6/624B829C/624483F5" Ref="Q43"  Part="1" 
AR Path="/6183FAE6/624B82A2/624483F5" Ref="Q41"  Part="1" 
AR Path="/6183FAE6/624B82B6/624483F5" Ref="Q39"  Part="1" 
AR Path="/6183FAE6/624B82BC/624483F5" Ref="Q37"  Part="1" 
AR Path="/6183FAE6/624B82D0/624483F5" Ref="Q35"  Part="1" 
AR Path="/6183FAE6/624B82D6/624483F5" Ref="Q33"  Part="1" 
AR Path="/6183FAE6/624B82E8/624483F5" Ref="Q31"  Part="1" 
AR Path="/6183FAE6/624B82F7/624483F5" Ref="Q29"  Part="1" 
F 0 "Q59" H 5441 3246 50  0000 L CNN
F 1 "MMBT2222" H 5441 3155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5450 3300 50  0001 C CNN
F 3 "~" H 5250 3200 50  0001 C CNN
	1    5250 3200
	1    0    0    -1  
$EndComp
Connection ~ 4800 3200
Text HLabel 5950 2800 2    50   Output ~ 0
OUT
$Comp
L Device:R_US R?
U 1 1 62448410
P 5350 3600
AR Path="/6183FAE6/6232C4EF/62448410" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623C263E/62448410" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623D514A/62448410" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623D5718/62448410" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623DF4E1/62448410" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623E7DB1/62448410" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623E7DC0/62448410" Ref="R?"  Part="1" 
AR Path="/6183FAE6/62442CC1/62448410" Ref="R169"  Part="1" 
AR Path="/6183FAE6/62464AF7/62448410" Ref="R166"  Part="1" 
AR Path="/6183FAE6/6247B051/62448410" Ref="R163"  Part="1" 
AR Path="/6183FAE6/6247B057/62448410" Ref="R160"  Part="1" 
AR Path="/6183FAE6/62482DEF/62448410" Ref="R157"  Part="1" 
AR Path="/6183FAE6/62482DF5/62448410" Ref="R154"  Part="1" 
AR Path="/6183FAE6/62482E09/62448410" Ref="R151"  Part="1" 
AR Path="/6183FAE6/62482E0F/62448410" Ref="R?"  Part="1" 
AR Path="/6183FAE6/62495C8E/62448410" Ref="R148"  Part="1" 
AR Path="/6183FAE6/624B829C/62448410" Ref="R145"  Part="1" 
AR Path="/6183FAE6/624B82A2/62448410" Ref="R142"  Part="1" 
AR Path="/6183FAE6/624B82B6/62448410" Ref="R139"  Part="1" 
AR Path="/6183FAE6/624B82BC/62448410" Ref="R136"  Part="1" 
AR Path="/6183FAE6/624B82D0/62448410" Ref="R133"  Part="1" 
AR Path="/6183FAE6/624B82D6/62448410" Ref="R130"  Part="1" 
AR Path="/6183FAE6/624B82E8/62448410" Ref="R127"  Part="1" 
AR Path="/6183FAE6/624B82F7/62448410" Ref="R124"  Part="1" 
F 0 "R169" H 5418 3646 50  0000 L CNN
F 1 "NOM" H 5418 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5390 3590 50  0001 C CNN
F 3 "~" H 5350 3600 50  0001 C CNN
	1    5350 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3400 5350 3450
$Comp
L Device:L L?
U 1 1 62448417
P 5350 3950
AR Path="/6183FAE6/6232C4EF/62448417" Ref="L?"  Part="1" 
AR Path="/6183FAE6/623C263E/62448417" Ref="L?"  Part="1" 
AR Path="/6183FAE6/623D514A/62448417" Ref="L?"  Part="1" 
AR Path="/6183FAE6/623D5718/62448417" Ref="L?"  Part="1" 
AR Path="/6183FAE6/623DF4E1/62448417" Ref="L?"  Part="1" 
AR Path="/6183FAE6/623E7DB1/62448417" Ref="L?"  Part="1" 
AR Path="/6183FAE6/623E7DC0/62448417" Ref="L?"  Part="1" 
AR Path="/6183FAE6/62442CC1/62448417" Ref="L18"  Part="1" 
AR Path="/6183FAE6/62464AF7/62448417" Ref="L17"  Part="1" 
AR Path="/6183FAE6/6247B051/62448417" Ref="L16"  Part="1" 
AR Path="/6183FAE6/6247B057/62448417" Ref="L15"  Part="1" 
AR Path="/6183FAE6/62482DEF/62448417" Ref="L14"  Part="1" 
AR Path="/6183FAE6/62482DF5/62448417" Ref="L13"  Part="1" 
AR Path="/6183FAE6/62482E09/62448417" Ref="L12"  Part="1" 
AR Path="/6183FAE6/62482E0F/62448417" Ref="L?"  Part="1" 
AR Path="/6183FAE6/62495C8E/62448417" Ref="L11"  Part="1" 
AR Path="/6183FAE6/624B829C/62448417" Ref="L10"  Part="1" 
AR Path="/6183FAE6/624B82A2/62448417" Ref="L9"  Part="1" 
AR Path="/6183FAE6/624B82B6/62448417" Ref="L8"  Part="1" 
AR Path="/6183FAE6/624B82BC/62448417" Ref="L7"  Part="1" 
AR Path="/6183FAE6/624B82D0/62448417" Ref="L6"  Part="1" 
AR Path="/6183FAE6/624B82D6/62448417" Ref="L5"  Part="1" 
AR Path="/6183FAE6/624B82E8/62448417" Ref="L4"  Part="1" 
AR Path="/6183FAE6/624B82F7/62448417" Ref="L3"  Part="1" 
F 0 "L18" H 5403 3996 50  0000 L CNN
F 1 "2.2uH" H 5403 3905 50  0000 L CNN
F 2 "" H 5350 3950 50  0001 C CNN
F 3 "~" H 5350 3950 50  0001 C CNN
	1    5350 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3750 5350 3800
Wire Wire Line
	5350 4150 5350 4100
Text HLabel 2950 3950 0    50   Input ~ 0
GND
Wire Wire Line
	4800 3200 5050 3200
Connection ~ 5350 4150
Wire Wire Line
	4800 3950 4800 4150
Wire Wire Line
	4800 4150 5350 4150
Wire Wire Line
	4200 3200 4800 3200
Wire Wire Line
	5950 2800 5350 2800
Wire Wire Line
	5350 2800 5350 3000
$Comp
L Device:R_US R?
U 1 1 6245EF02
P 4200 2950
AR Path="/6183FAE6/6232C4EF/6245EF02" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623C263E/6245EF02" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623D514A/6245EF02" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623D5718/6245EF02" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623DF4E1/6245EF02" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623E7DB1/6245EF02" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623E7DC0/6245EF02" Ref="R?"  Part="1" 
AR Path="/6183FAE6/62442CC1/6245EF02" Ref="R168"  Part="1" 
AR Path="/6183FAE6/62464AF7/6245EF02" Ref="R165"  Part="1" 
AR Path="/6183FAE6/6247B051/6245EF02" Ref="R162"  Part="1" 
AR Path="/6183FAE6/6247B057/6245EF02" Ref="R159"  Part="1" 
AR Path="/6183FAE6/62482DEF/6245EF02" Ref="R156"  Part="1" 
AR Path="/6183FAE6/62482DF5/6245EF02" Ref="R153"  Part="1" 
AR Path="/6183FAE6/62482E09/6245EF02" Ref="R150"  Part="1" 
AR Path="/6183FAE6/62482E0F/6245EF02" Ref="R?"  Part="1" 
AR Path="/6183FAE6/62495C8E/6245EF02" Ref="R147"  Part="1" 
AR Path="/6183FAE6/624B829C/6245EF02" Ref="R144"  Part="1" 
AR Path="/6183FAE6/624B82A2/6245EF02" Ref="R141"  Part="1" 
AR Path="/6183FAE6/624B82B6/6245EF02" Ref="R138"  Part="1" 
AR Path="/6183FAE6/624B82BC/6245EF02" Ref="R135"  Part="1" 
AR Path="/6183FAE6/624B82D0/6245EF02" Ref="R132"  Part="1" 
AR Path="/6183FAE6/624B82D6/6245EF02" Ref="R129"  Part="1" 
AR Path="/6183FAE6/624B82E8/6245EF02" Ref="R126"  Part="1" 
AR Path="/6183FAE6/624B82F7/6245EF02" Ref="R123"  Part="1" 
F 0 "R168" H 4268 2996 50  0000 L CNN
F 1 "390" H 4268 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4240 2940 50  0001 C CNN
F 3 "~" H 4200 2950 50  0001 C CNN
	1    4200 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2500 4200 2500
Wire Wire Line
	4200 2500 4200 2800
Wire Wire Line
	4200 3100 4200 3200
Connection ~ 4200 3200
Wire Wire Line
	4200 3200 4200 3350
$Comp
L Device:D_Small_ALT D?
U 1 1 624611F8
P 5350 4300
AR Path="/6183FAE6/6232C4EF/624611F8" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623C263E/624611F8" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623D514A/624611F8" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623D5718/624611F8" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623DF4E1/624611F8" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623E7DB1/624611F8" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623E7DC0/624611F8" Ref="D?"  Part="1" 
AR Path="/6183FAE6/62442CC1/624611F8" Ref="D93"  Part="1" 
AR Path="/6183FAE6/62464AF7/624611F8" Ref="D89"  Part="1" 
AR Path="/6183FAE6/6247B051/624611F8" Ref="D85"  Part="1" 
AR Path="/6183FAE6/6247B057/624611F8" Ref="D81"  Part="1" 
AR Path="/6183FAE6/62482DEF/624611F8" Ref="D77"  Part="1" 
AR Path="/6183FAE6/62482DF5/624611F8" Ref="D73"  Part="1" 
AR Path="/6183FAE6/62482E09/624611F8" Ref="D69"  Part="1" 
AR Path="/6183FAE6/62482E0F/624611F8" Ref="D?"  Part="1" 
AR Path="/6183FAE6/62495C8E/624611F8" Ref="D65"  Part="1" 
AR Path="/6183FAE6/624B829C/624611F8" Ref="D61"  Part="1" 
AR Path="/6183FAE6/624B82A2/624611F8" Ref="D57"  Part="1" 
AR Path="/6183FAE6/624B82B6/624611F8" Ref="D53"  Part="1" 
AR Path="/6183FAE6/624B82BC/624611F8" Ref="D49"  Part="1" 
AR Path="/6183FAE6/624B82D0/624611F8" Ref="D45"  Part="1" 
AR Path="/6183FAE6/624B82D6/624611F8" Ref="D41"  Part="1" 
AR Path="/6183FAE6/624B82E8/624611F8" Ref="D37"  Part="1" 
AR Path="/6183FAE6/624B82F7/624611F8" Ref="D33"  Part="1" 
F 0 "D93" V 5396 4230 50  0000 R CNN
F 1 "1N4148" V 5305 4230 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" V 5350 4300 50  0001 C CNN
F 3 "~" V 5350 4300 50  0001 C CNN
	1    5350 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 4400 5350 4450
$EndSCHEMATC
