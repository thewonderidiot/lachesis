EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 30 68
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
L Device:R_US R215
U 1 1 623343FA
P 4000 3550
AR Path="/6183FAE6/6232C4EF/623343FA" Ref="R215"  Part="1" 
AR Path="/6183FAE6/623C263E/623343FA" Ref="R208"  Part="1" 
AR Path="/6183FAE6/623D514A/623343FA" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623D5718/623343FA" Ref="R201"  Part="1" 
AR Path="/6183FAE6/623DF4E1/623343FA" Ref="R194"  Part="1" 
AR Path="/6183FAE6/623E7DB1/623343FA" Ref="R187"  Part="1" 
AR Path="/6183FAE6/623E7DC0/623343FA" Ref="R180"  Part="1" 
F 0 "R215" V 3795 3550 50  0000 C CNN
F 1 "500" V 3886 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4040 3540 50  0001 C CNN
F 3 "~" H 4000 3550 50  0001 C CNN
	1    4000 3550
	0    1    1    0   
$EndComp
Text HLabel 3300 3550 0    50   Input ~ 0
IN
$Comp
L Device:Q_NPN_BEC Q86
U 1 1 62336B69
P 4450 3550
AR Path="/6183FAE6/6232C4EF/62336B69" Ref="Q86"  Part="1" 
AR Path="/6183FAE6/623C263E/62336B69" Ref="Q82"  Part="1" 
AR Path="/6183FAE6/623D514A/62336B69" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623D5718/62336B69" Ref="Q78"  Part="1" 
AR Path="/6183FAE6/623DF4E1/62336B69" Ref="Q74"  Part="1" 
AR Path="/6183FAE6/623E7DB1/62336B69" Ref="Q70"  Part="1" 
AR Path="/6183FAE6/623E7DC0/62336B69" Ref="Q66"  Part="1" 
F 0 "Q86" H 4641 3596 50  0000 L CNN
F 1 "MMBT2222" H 4641 3505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4650 3650 50  0001 C CNN
F 3 "~" H 4450 3550 50  0001 C CNN
	1    4450 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3550 4250 3550
Wire Wire Line
	4550 3750 4550 3950
Wire Wire Line
	4550 3950 3300 3950
Text HLabel 3950 2500 0    50   Input ~ 0
PWR
Wire Wire Line
	3300 3550 3850 3550
$Comp
L Device:R_US R216
U 1 1 623392F7
P 4800 3300
AR Path="/6183FAE6/6232C4EF/623392F7" Ref="R216"  Part="1" 
AR Path="/6183FAE6/623C263E/623392F7" Ref="R209"  Part="1" 
AR Path="/6183FAE6/623D514A/623392F7" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623D5718/623392F7" Ref="R202"  Part="1" 
AR Path="/6183FAE6/623DF4E1/623392F7" Ref="R195"  Part="1" 
AR Path="/6183FAE6/623E7DB1/623392F7" Ref="R188"  Part="1" 
AR Path="/6183FAE6/623E7DC0/623392F7" Ref="R181"  Part="1" 
F 0 "R216" V 4595 3300 50  0000 C CNN
F 1 "1k" V 4686 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4840 3290 50  0001 C CNN
F 3 "~" H 4800 3300 50  0001 C CNN
	1    4800 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 3350 4550 3300
Wire Wire Line
	4550 3300 4650 3300
$Comp
L Device:R_US R217
U 1 1 623399B1
P 5000 2900
AR Path="/6183FAE6/6232C4EF/623399B1" Ref="R217"  Part="1" 
AR Path="/6183FAE6/623C263E/623399B1" Ref="R210"  Part="1" 
AR Path="/6183FAE6/623D514A/623399B1" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623D5718/623399B1" Ref="R203"  Part="1" 
AR Path="/6183FAE6/623DF4E1/623399B1" Ref="R196"  Part="1" 
AR Path="/6183FAE6/623E7DB1/623399B1" Ref="R189"  Part="1" 
AR Path="/6183FAE6/623E7DC0/623399B1" Ref="R182"  Part="1" 
F 0 "R217" H 5068 2946 50  0000 L CNN
F 1 "5.1k" H 5068 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5040 2890 50  0001 C CNN
F 3 "~" H 5000 2900 50  0001 C CNN
	1    5000 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3300 5000 3300
Wire Wire Line
	5000 3300 5000 3050
$Comp
L Device:D_Small_ALT D131
U 1 1 6233D2CD
P 5350 3150
AR Path="/6183FAE6/6232C4EF/6233D2CD" Ref="D131"  Part="1" 
AR Path="/6183FAE6/623C263E/6233D2CD" Ref="D124"  Part="1" 
AR Path="/6183FAE6/623D514A/6233D2CD" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623D5718/6233D2CD" Ref="D117"  Part="1" 
AR Path="/6183FAE6/623DF4E1/6233D2CD" Ref="D110"  Part="1" 
AR Path="/6183FAE6/623E7DB1/6233D2CD" Ref="D103"  Part="1" 
AR Path="/6183FAE6/623E7DC0/6233D2CD" Ref="D96"  Part="1" 
F 0 "D131" V 5396 3080 50  0000 R CNN
F 1 "1N4148" V 5305 3080 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" V 5350 3150 50  0001 C CNN
F 3 "~" V 5350 3150 50  0001 C CNN
	1    5350 3150
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small_ALT D130
U 1 1 6233D977
P 5350 2900
AR Path="/6183FAE6/6232C4EF/6233D977" Ref="D130"  Part="1" 
AR Path="/6183FAE6/623C263E/6233D977" Ref="D123"  Part="1" 
AR Path="/6183FAE6/623D514A/6233D977" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623D5718/6233D977" Ref="D116"  Part="1" 
AR Path="/6183FAE6/623DF4E1/6233D977" Ref="D109"  Part="1" 
AR Path="/6183FAE6/623E7DB1/6233D977" Ref="D102"  Part="1" 
AR Path="/6183FAE6/623E7DC0/6233D977" Ref="D95"  Part="1" 
F 0 "D130" V 5396 2830 50  0000 R CNN
F 1 "1N4148" V 5305 2830 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" V 5350 2900 50  0001 C CNN
F 3 "~" V 5350 2900 50  0001 C CNN
	1    5350 2900
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small_ALT D129
U 1 1 6233DD21
P 5350 2650
AR Path="/6183FAE6/6232C4EF/6233DD21" Ref="D129"  Part="1" 
AR Path="/6183FAE6/623C263E/6233DD21" Ref="D122"  Part="1" 
AR Path="/6183FAE6/623D514A/6233DD21" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623D5718/6233DD21" Ref="D115"  Part="1" 
AR Path="/6183FAE6/623DF4E1/6233DD21" Ref="D108"  Part="1" 
AR Path="/6183FAE6/623E7DB1/6233DD21" Ref="D101"  Part="1" 
AR Path="/6183FAE6/623E7DC0/6233DD21" Ref="D94"  Part="1" 
F 0 "D129" V 5396 2580 50  0000 R CNN
F 1 "1N4148" V 5305 2580 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" V 5350 2650 50  0001 C CNN
F 3 "~" V 5350 2650 50  0001 C CNN
	1    5350 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 2750 5350 2800
Wire Wire Line
	5350 3000 5350 3050
Wire Wire Line
	5000 3300 5350 3300
Wire Wire Line
	5350 3300 5350 3250
Connection ~ 5000 3300
Wire Wire Line
	5000 2750 5000 2500
Wire Wire Line
	5000 2500 5350 2500
Wire Wire Line
	5350 2500 5350 2550
$Comp
L Device:Q_PNP_BEC Q87
U 1 1 6233F700
P 5800 3300
AR Path="/6183FAE6/6232C4EF/6233F700" Ref="Q87"  Part="1" 
AR Path="/6183FAE6/623C263E/6233F700" Ref="Q83"  Part="1" 
AR Path="/6183FAE6/623D514A/6233F700" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623D5718/6233F700" Ref="Q79"  Part="1" 
AR Path="/6183FAE6/623DF4E1/6233F700" Ref="Q75"  Part="1" 
AR Path="/6183FAE6/623E7DB1/6233F700" Ref="Q71"  Part="1" 
AR Path="/6183FAE6/623E7DC0/6233F700" Ref="Q67"  Part="1" 
F 0 "Q87" H 5991 3254 50  0000 L CNN
F 1 "MMBT2907" H 5991 3345 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6000 3400 50  0001 C CNN
F 3 "~" H 5800 3300 50  0001 C CNN
	1    5800 3300
	1    0    0    1   
$EndComp
Wire Wire Line
	5350 3300 5600 3300
Connection ~ 5350 3300
$Comp
L Device:R_US R219
U 1 1 62341C10
P 5900 2850
AR Path="/6183FAE6/6232C4EF/62341C10" Ref="R219"  Part="1" 
AR Path="/6183FAE6/623C263E/62341C10" Ref="R212"  Part="1" 
AR Path="/6183FAE6/623D514A/62341C10" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623D5718/62341C10" Ref="R205"  Part="1" 
AR Path="/6183FAE6/623DF4E1/62341C10" Ref="R198"  Part="1" 
AR Path="/6183FAE6/623E7DB1/62341C10" Ref="R191"  Part="1" 
AR Path="/6183FAE6/623E7DC0/62341C10" Ref="R184"  Part="1" 
F 0 "R219" H 5968 2896 50  0000 L CNN
F 1 "27" H 5968 2805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5940 2840 50  0001 C CNN
F 3 "~" H 5900 2850 50  0001 C CNN
	1    5900 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3000 5900 3100
Wire Wire Line
	5900 2700 5900 2500
Wire Wire Line
	5900 2500 5350 2500
Connection ~ 5350 2500
Wire Wire Line
	5900 3500 5900 3550
Wire Wire Line
	5900 3550 5750 3550
Wire Wire Line
	5750 3550 5750 3850
$Comp
L Device:D_Small_ALT D134
U 1 1 62342935
P 5950 4500
AR Path="/6183FAE6/6232C4EF/62342935" Ref="D134"  Part="1" 
AR Path="/6183FAE6/623C263E/62342935" Ref="D127"  Part="1" 
AR Path="/6183FAE6/623D514A/62342935" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623D5718/62342935" Ref="D120"  Part="1" 
AR Path="/6183FAE6/623DF4E1/62342935" Ref="D113"  Part="1" 
AR Path="/6183FAE6/623E7DB1/62342935" Ref="D106"  Part="1" 
AR Path="/6183FAE6/623E7DC0/62342935" Ref="D99"  Part="1" 
F 0 "D134" V 5996 4430 50  0000 R CNN
F 1 "1N4148" V 5905 4430 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" V 5950 4500 50  0001 C CNN
F 3 "~" V 5950 4500 50  0001 C CNN
	1    5950 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small_ALT D133
U 1 1 6234294F
P 5950 4250
AR Path="/6183FAE6/6232C4EF/6234294F" Ref="D133"  Part="1" 
AR Path="/6183FAE6/623C263E/6234294F" Ref="D126"  Part="1" 
AR Path="/6183FAE6/623D514A/6234294F" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623D5718/6234294F" Ref="D119"  Part="1" 
AR Path="/6183FAE6/623DF4E1/6234294F" Ref="D112"  Part="1" 
AR Path="/6183FAE6/623E7DB1/6234294F" Ref="D105"  Part="1" 
AR Path="/6183FAE6/623E7DC0/6234294F" Ref="D98"  Part="1" 
F 0 "D133" V 5996 4180 50  0000 R CNN
F 1 "1N4148" V 5905 4180 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" V 5950 4250 50  0001 C CNN
F 3 "~" V 5950 4250 50  0001 C CNN
	1    5950 4250
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small_ALT D132
U 1 1 62342959
P 5950 4000
AR Path="/6183FAE6/6232C4EF/62342959" Ref="D132"  Part="1" 
AR Path="/6183FAE6/623C263E/62342959" Ref="D125"  Part="1" 
AR Path="/6183FAE6/623D514A/62342959" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623D5718/62342959" Ref="D118"  Part="1" 
AR Path="/6183FAE6/623DF4E1/62342959" Ref="D111"  Part="1" 
AR Path="/6183FAE6/623E7DB1/62342959" Ref="D104"  Part="1" 
AR Path="/6183FAE6/623E7DC0/62342959" Ref="D97"  Part="1" 
F 0 "D132" V 5996 3930 50  0000 R CNN
F 1 "1N4148" V 5905 3930 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" V 5950 4000 50  0001 C CNN
F 3 "~" V 5950 4000 50  0001 C CNN
	1    5950 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 4100 5950 4150
Wire Wire Line
	5950 4350 5950 4400
$Comp
L Device:D_Small_ALT D135
U 1 1 62344A04
P 5950 4750
AR Path="/6183FAE6/6232C4EF/62344A04" Ref="D135"  Part="1" 
AR Path="/6183FAE6/623C263E/62344A04" Ref="D128"  Part="1" 
AR Path="/6183FAE6/623D514A/62344A04" Ref="D?"  Part="1" 
AR Path="/6183FAE6/623D5718/62344A04" Ref="D121"  Part="1" 
AR Path="/6183FAE6/623DF4E1/62344A04" Ref="D114"  Part="1" 
AR Path="/6183FAE6/623E7DB1/62344A04" Ref="D107"  Part="1" 
AR Path="/6183FAE6/623E7DC0/62344A04" Ref="D100"  Part="1" 
F 0 "D135" V 5996 4680 50  0000 R CNN
F 1 "1N4148" V 5905 4680 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" V 5950 4750 50  0001 C CNN
F 3 "~" V 5950 4750 50  0001 C CNN
	1    5950 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 4600 5950 4650
Wire Wire Line
	5750 3850 5950 3850
Wire Wire Line
	5950 3850 5950 3900
$Comp
L Device:R_US R218
U 1 1 6234688F
P 5050 4150
AR Path="/6183FAE6/6232C4EF/6234688F" Ref="R218"  Part="1" 
AR Path="/6183FAE6/623C263E/6234688F" Ref="R211"  Part="1" 
AR Path="/6183FAE6/623D514A/6234688F" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623D5718/6234688F" Ref="R204"  Part="1" 
AR Path="/6183FAE6/623DF4E1/6234688F" Ref="R197"  Part="1" 
AR Path="/6183FAE6/623E7DB1/6234688F" Ref="R190"  Part="1" 
AR Path="/6183FAE6/623E7DC0/6234688F" Ref="R183"  Part="1" 
F 0 "R218" H 5118 4196 50  0000 L CNN
F 1 "5.1k" H 5118 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5090 4140 50  0001 C CNN
F 3 "~" H 5050 4150 50  0001 C CNN
	1    5050 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4000 5050 3850
Wire Wire Line
	5050 3850 5750 3850
Connection ~ 5750 3850
Wire Wire Line
	5050 4300 5050 4900
Wire Wire Line
	5050 4900 5950 4900
Wire Wire Line
	5950 4900 5950 4850
Wire Wire Line
	5050 4900 5050 4950
Connection ~ 5050 4900
$Comp
L power:GND #PWR085
U 1 1 62348278
P 5050 4950
AR Path="/6183FAE6/6232C4EF/62348278" Ref="#PWR085"  Part="1" 
AR Path="/6183FAE6/623C263E/62348278" Ref="#PWR084"  Part="1" 
AR Path="/6183FAE6/623D514A/62348278" Ref="#PWR?"  Part="1" 
AR Path="/6183FAE6/623D5718/62348278" Ref="#PWR083"  Part="1" 
AR Path="/6183FAE6/623DF4E1/62348278" Ref="#PWR082"  Part="1" 
AR Path="/6183FAE6/623E7DB1/62348278" Ref="#PWR081"  Part="1" 
AR Path="/6183FAE6/623E7DC0/62348278" Ref="#PWR080"  Part="1" 
F 0 "#PWR085" H 5050 4700 50  0001 C CNN
F 1 "GND" H 5055 4777 50  0000 C CNN
F 2 "" H 5050 4950 50  0001 C CNN
F 3 "" H 5050 4950 50  0001 C CNN
	1    5050 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BEC Q88
U 1 1 623499CA
P 6550 3850
AR Path="/6183FAE6/6232C4EF/623499CA" Ref="Q88"  Part="1" 
AR Path="/6183FAE6/623C263E/623499CA" Ref="Q84"  Part="1" 
AR Path="/6183FAE6/623D514A/623499CA" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623D5718/623499CA" Ref="Q80"  Part="1" 
AR Path="/6183FAE6/623DF4E1/623499CA" Ref="Q76"  Part="1" 
AR Path="/6183FAE6/623E7DB1/623499CA" Ref="Q72"  Part="1" 
AR Path="/6183FAE6/623E7DC0/623499CA" Ref="Q68"  Part="1" 
F 0 "Q88" H 6741 3896 50  0000 L CNN
F 1 "MMBT2222" H 6741 3805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6750 3950 50  0001 C CNN
F 3 "~" H 6550 3850 50  0001 C CNN
	1    6550 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3850 6300 3850
Connection ~ 5950 3850
$Comp
L Device:Q_NPN_BEC Q89
U 1 1 6234A8D3
P 7200 3550
AR Path="/6183FAE6/6232C4EF/6234A8D3" Ref="Q89"  Part="1" 
AR Path="/6183FAE6/623C263E/6234A8D3" Ref="Q85"  Part="1" 
AR Path="/6183FAE6/623D514A/6234A8D3" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623D5718/6234A8D3" Ref="Q81"  Part="1" 
AR Path="/6183FAE6/623DF4E1/6234A8D3" Ref="Q77"  Part="1" 
AR Path="/6183FAE6/623E7DB1/6234A8D3" Ref="Q73"  Part="1" 
AR Path="/6183FAE6/623E7DC0/6234A8D3" Ref="Q69"  Part="1" 
F 0 "Q89" H 7391 3596 50  0000 L CNN
F 1 "MMBT2222" H 7391 3505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7400 3650 50  0001 C CNN
F 3 "~" H 7200 3550 50  0001 C CNN
	1    7200 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3850 6300 3550
Wire Wire Line
	6300 3550 7000 3550
Connection ~ 6300 3850
Wire Wire Line
	6300 3850 6350 3850
Wire Wire Line
	7300 3350 7300 3050
Wire Wire Line
	7300 2850 7650 2850
Text HLabel 7650 2850 2    50   Output ~ 0
OUT
Wire Wire Line
	3950 2500 5000 2500
Connection ~ 5000 2500
Wire Wire Line
	6650 3650 6650 3050
Wire Wire Line
	6650 3050 7300 3050
Connection ~ 7300 3050
Wire Wire Line
	7300 3050 7300 2850
$Comp
L Device:R_US R220
U 1 1 623506CE
P 6650 4250
AR Path="/6183FAE6/6232C4EF/623506CE" Ref="R220"  Part="1" 
AR Path="/6183FAE6/623C263E/623506CE" Ref="R213"  Part="1" 
AR Path="/6183FAE6/623D514A/623506CE" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623D5718/623506CE" Ref="R206"  Part="1" 
AR Path="/6183FAE6/623DF4E1/623506CE" Ref="R199"  Part="1" 
AR Path="/6183FAE6/623E7DB1/623506CE" Ref="R192"  Part="1" 
AR Path="/6183FAE6/623E7DC0/623506CE" Ref="R185"  Part="1" 
F 0 "R220" H 6718 4296 50  0000 L CNN
F 1 "NOM" H 6718 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6690 4240 50  0001 C CNN
F 3 "~" H 6650 4250 50  0001 C CNN
	1    6650 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 4050 6650 4100
$Comp
L Device:L L29
U 1 1 62353148
P 6650 4600
AR Path="/6183FAE6/6232C4EF/62353148" Ref="L29"  Part="1" 
AR Path="/6183FAE6/623C263E/62353148" Ref="L27"  Part="1" 
AR Path="/6183FAE6/623D514A/62353148" Ref="L?"  Part="1" 
AR Path="/6183FAE6/623D5718/62353148" Ref="L25"  Part="1" 
AR Path="/6183FAE6/623DF4E1/62353148" Ref="L23"  Part="1" 
AR Path="/6183FAE6/623E7DB1/62353148" Ref="L21"  Part="1" 
AR Path="/6183FAE6/623E7DC0/62353148" Ref="L19"  Part="1" 
F 0 "L29" H 6703 4646 50  0000 L CNN
F 1 "3.9uH" H 6703 4555 50  0000 L CNN
F 2 "" H 6650 4600 50  0001 C CNN
F 3 "~" H 6650 4600 50  0001 C CNN
	1    6650 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 4400 6650 4450
Wire Wire Line
	5950 4900 6650 4900
Wire Wire Line
	6650 4900 6650 4750
Connection ~ 5950 4900
$Comp
L Device:R_US R221
U 1 1 6235467B
P 7300 4100
AR Path="/6183FAE6/6232C4EF/6235467B" Ref="R221"  Part="1" 
AR Path="/6183FAE6/623C263E/6235467B" Ref="R214"  Part="1" 
AR Path="/6183FAE6/623D514A/6235467B" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623D5718/6235467B" Ref="R207"  Part="1" 
AR Path="/6183FAE6/623DF4E1/6235467B" Ref="R200"  Part="1" 
AR Path="/6183FAE6/623E7DB1/6235467B" Ref="R193"  Part="1" 
AR Path="/6183FAE6/623E7DC0/6235467B" Ref="R186"  Part="1" 
F 0 "R221" H 7368 4146 50  0000 L CNN
F 1 "NOM" H 7368 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7340 4090 50  0001 C CNN
F 3 "~" H 7300 4100 50  0001 C CNN
	1    7300 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3750 7300 3950
$Comp
L Device:L L30
U 1 1 6235469A
P 7300 4450
AR Path="/6183FAE6/6232C4EF/6235469A" Ref="L30"  Part="1" 
AR Path="/6183FAE6/623C263E/6235469A" Ref="L28"  Part="1" 
AR Path="/6183FAE6/623D514A/6235469A" Ref="L?"  Part="1" 
AR Path="/6183FAE6/623D5718/6235469A" Ref="L26"  Part="1" 
AR Path="/6183FAE6/623DF4E1/6235469A" Ref="L24"  Part="1" 
AR Path="/6183FAE6/623E7DB1/6235469A" Ref="L22"  Part="1" 
AR Path="/6183FAE6/623E7DC0/6235469A" Ref="L20"  Part="1" 
F 0 "L30" H 7353 4496 50  0000 L CNN
F 1 "3.9uH" H 7353 4405 50  0000 L CNN
F 2 "" H 7300 4450 50  0001 C CNN
F 3 "~" H 7300 4450 50  0001 C CNN
	1    7300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4250 7300 4300
Wire Wire Line
	7300 4900 7300 4600
Wire Wire Line
	6650 4900 7300 4900
Connection ~ 6650 4900
Text HLabel 3300 3950 0    50   Input ~ 0
GND
$EndSCHEMATC
