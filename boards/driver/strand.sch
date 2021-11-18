EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 14 64
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
L Device:R_US R77
U 1 1 6189080E
P 5600 3450
AR Path="/64D2DF1E/61886B73/6189080E" Ref="R77"  Part="1" 
AR Path="/64D2DF1E/6189F177/6189080E" Ref="R81"  Part="1" 
AR Path="/64D2DF1E/618A142B/6189080E" Ref="R85"  Part="1" 
AR Path="/64D2DF1E/618A143A/6189080E" Ref="R89"  Part="1" 
AR Path="/64D2DF1E/618A4047/6189080E" Ref="R93"  Part="1" 
AR Path="/64D2DF1E/618A4056/6189080E" Ref="R97"  Part="1" 
AR Path="/64D2DF1E/618A4065/6189080E" Ref="R101"  Part="1" 
AR Path="/64D2DF1E/618A4074/6189080E" Ref="R105"  Part="1" 
AR Path="/64D2DF1E/618ABD34/6189080E" Ref="R109"  Part="1" 
AR Path="/64D2DF1E/618ABD43/6189080E" Ref="R113"  Part="1" 
AR Path="/64D2DF1E/618ABD52/6189080E" Ref="R117"  Part="1" 
AR Path="/64D2DF1E/618ABD61/6189080E" Ref="R121"  Part="1" 
F 0 "R121" H 5668 3496 50  0000 L CNN
F 1 "2k" H 5668 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5640 3440 50  0001 C CNN
F 3 "~" H 5600 3450 50  0001 C CNN
	1    5600 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3600 5600 3750
$Comp
L Device:R_US R76
U 1 1 61890815
P 5600 3000
AR Path="/64D2DF1E/61886B73/61890815" Ref="R76"  Part="1" 
AR Path="/64D2DF1E/6189F177/61890815" Ref="R80"  Part="1" 
AR Path="/64D2DF1E/618A142B/61890815" Ref="R84"  Part="1" 
AR Path="/64D2DF1E/618A143A/61890815" Ref="R88"  Part="1" 
AR Path="/64D2DF1E/618A4047/61890815" Ref="R92"  Part="1" 
AR Path="/64D2DF1E/618A4056/61890815" Ref="R96"  Part="1" 
AR Path="/64D2DF1E/618A4065/61890815" Ref="R100"  Part="1" 
AR Path="/64D2DF1E/618A4074/61890815" Ref="R104"  Part="1" 
AR Path="/64D2DF1E/618ABD34/61890815" Ref="R108"  Part="1" 
AR Path="/64D2DF1E/618ABD43/61890815" Ref="R112"  Part="1" 
AR Path="/64D2DF1E/618ABD52/61890815" Ref="R116"  Part="1" 
AR Path="/64D2DF1E/618ABD61/61890815" Ref="R120"  Part="1" 
F 0 "R120" H 5668 3046 50  0000 L CNN
F 1 "5.1k" H 5668 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5640 2990 50  0001 C CNN
F 3 "~" H 5600 3000 50  0001 C CNN
	1    5600 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3150 5600 3250
Wire Wire Line
	5600 2750 5600 2850
Wire Wire Line
	5150 2750 5600 2750
$Comp
L Device:Q_PNP_BEC Q5
U 1 1 6189081E
P 6100 3250
AR Path="/64D2DF1E/61886B73/6189081E" Ref="Q5"  Part="1" 
AR Path="/64D2DF1E/6189F177/6189081E" Ref="Q7"  Part="1" 
AR Path="/64D2DF1E/618A142B/6189081E" Ref="Q9"  Part="1" 
AR Path="/64D2DF1E/618A143A/6189081E" Ref="Q11"  Part="1" 
AR Path="/64D2DF1E/618A4047/6189081E" Ref="Q13"  Part="1" 
AR Path="/64D2DF1E/618A4056/6189081E" Ref="Q15"  Part="1" 
AR Path="/64D2DF1E/618A4065/6189081E" Ref="Q17"  Part="1" 
AR Path="/64D2DF1E/618A4074/6189081E" Ref="Q19"  Part="1" 
AR Path="/64D2DF1E/618ABD34/6189081E" Ref="Q21"  Part="1" 
AR Path="/64D2DF1E/618ABD43/6189081E" Ref="Q23"  Part="1" 
AR Path="/64D2DF1E/618ABD52/6189081E" Ref="Q25"  Part="1" 
AR Path="/64D2DF1E/618ABD61/6189081E" Ref="Q27"  Part="1" 
F 0 "Q27" H 6291 3296 50  0000 L CNN
F 1 "MMBT2907" H 6291 3205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6300 3350 50  0001 C CNN
F 3 "~" H 6100 3250 50  0001 C CNN
	1    6100 3250
	1    0    0    1   
$EndComp
Wire Wire Line
	5600 3250 5900 3250
Connection ~ 5600 3250
Wire Wire Line
	5600 3250 5600 3300
Wire Wire Line
	6200 3000 6200 3050
Wire Wire Line
	5600 2750 6200 2750
Wire Wire Line
	6200 2750 6200 2800
Connection ~ 5600 2750
$Comp
L Device:R_US R78
U 1 1 6189082B
P 6200 3700
AR Path="/64D2DF1E/61886B73/6189082B" Ref="R78"  Part="1" 
AR Path="/64D2DF1E/6189F177/6189082B" Ref="R82"  Part="1" 
AR Path="/64D2DF1E/618A142B/6189082B" Ref="R86"  Part="1" 
AR Path="/64D2DF1E/618A143A/6189082B" Ref="R90"  Part="1" 
AR Path="/64D2DF1E/618A4047/6189082B" Ref="R94"  Part="1" 
AR Path="/64D2DF1E/618A4056/6189082B" Ref="R98"  Part="1" 
AR Path="/64D2DF1E/618A4065/6189082B" Ref="R102"  Part="1" 
AR Path="/64D2DF1E/618A4074/6189082B" Ref="R106"  Part="1" 
AR Path="/64D2DF1E/618ABD34/6189082B" Ref="R110"  Part="1" 
AR Path="/64D2DF1E/618ABD43/6189082B" Ref="R114"  Part="1" 
AR Path="/64D2DF1E/618ABD52/6189082B" Ref="R118"  Part="1" 
AR Path="/64D2DF1E/618ABD61/6189082B" Ref="R122"  Part="1" 
F 0 "R122" H 6268 3746 50  0000 L CNN
F 1 "3k" H 6268 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6240 3690 50  0001 C CNN
F 3 "~" H 6200 3700 50  0001 C CNN
	1    6200 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3450 6200 3500
$Comp
L Device:D_Small_ALT D7
U 1 1 61890838
P 6200 2900
AR Path="/64D2DF1E/61886B73/61890838" Ref="D7"  Part="1" 
AR Path="/64D2DF1E/6189F177/61890838" Ref="D9"  Part="1" 
AR Path="/64D2DF1E/618A142B/61890838" Ref="D11"  Part="1" 
AR Path="/64D2DF1E/618A143A/61890838" Ref="D13"  Part="1" 
AR Path="/64D2DF1E/618A4047/61890838" Ref="D15"  Part="1" 
AR Path="/64D2DF1E/618A4056/61890838" Ref="D17"  Part="1" 
AR Path="/64D2DF1E/618A4065/61890838" Ref="D19"  Part="1" 
AR Path="/64D2DF1E/618A4074/61890838" Ref="D21"  Part="1" 
AR Path="/64D2DF1E/618ABD34/61890838" Ref="D23"  Part="1" 
AR Path="/64D2DF1E/618ABD43/61890838" Ref="D25"  Part="1" 
AR Path="/64D2DF1E/618ABD52/61890838" Ref="D27"  Part="1" 
AR Path="/64D2DF1E/618ABD61/61890838" Ref="D29"  Part="1" 
F 0 "D29" V 6246 2830 50  0000 R CNN
F 1 "1N4148" V 6155 2830 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" V 6200 2900 50  0001 C CNN
F 3 "~" V 6200 2900 50  0001 C CNN
	1    6200 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 3850 6200 3900
Text HLabel 6650 3500 2    50   Output ~ 0
STRn
Wire Wire Line
	6200 3500 6650 3500
Connection ~ 6200 3500
Wire Wire Line
	6200 3500 6200 3550
$Comp
L power:GND #PWR060
U 1 1 6188E8C0
P 6200 3900
AR Path="/64D2DF1E/61886B73/6188E8C0" Ref="#PWR060"  Part="1" 
AR Path="/64D2DF1E/6189F177/6188E8C0" Ref="#PWR062"  Part="1" 
AR Path="/64D2DF1E/618A142B/6188E8C0" Ref="#PWR064"  Part="1" 
AR Path="/64D2DF1E/618A143A/6188E8C0" Ref="#PWR066"  Part="1" 
AR Path="/64D2DF1E/618A4047/6188E8C0" Ref="#PWR068"  Part="1" 
AR Path="/64D2DF1E/618A4056/6188E8C0" Ref="#PWR070"  Part="1" 
AR Path="/64D2DF1E/618A4065/6188E8C0" Ref="#PWR072"  Part="1" 
AR Path="/64D2DF1E/618A4074/6188E8C0" Ref="#PWR074"  Part="1" 
AR Path="/64D2DF1E/618ABD34/6188E8C0" Ref="#PWR076"  Part="1" 
AR Path="/64D2DF1E/618ABD43/6188E8C0" Ref="#PWR078"  Part="1" 
AR Path="/64D2DF1E/618ABD52/6188E8C0" Ref="#PWR080"  Part="1" 
AR Path="/64D2DF1E/618ABD61/6188E8C0" Ref="#PWR082"  Part="1" 
F 0 "#PWR082" H 6200 3650 50  0001 C CNN
F 1 "GND" H 6205 3727 50  0000 C CNN
F 2 "" H 6200 3900 50  0001 C CNN
F 3 "" H 6200 3900 50  0001 C CNN
	1    6200 3900
	1    0    0    -1  
$EndComp
Text HLabel 5150 2750 0    50   Input ~ 0
PWR
Text HLabel 4500 4050 0    50   Input ~ 0
SEn
$Comp
L Device:R_US R?
U 1 1 639DBFB4
P 4750 4050
AR Path="/6183FAE6/6232C4EF/639DBFB4" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623C263E/639DBFB4" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623D514A/639DBFB4" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623D5718/639DBFB4" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623DF4E1/639DBFB4" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623E7DB1/639DBFB4" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623E7DC0/639DBFB4" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/62A081E6/639DBFB4" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/61899537/639DBFB4" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/6189F17F/639DBFB4" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/618A1433/639DBFB4" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/618A1442/639DBFB4" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/618A404F/639DBFB4" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/618A405E/639DBFB4" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/618A406D/639DBFB4" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/618A407C/639DBFB4" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/618ABD3C/639DBFB4" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/618ABD4B/639DBFB4" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/618ABD5A/639DBFB4" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/618ABD69/639DBFB4" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/61886B73/639DBFB4" Ref="R75"  Part="1" 
AR Path="/64D2DF1E/6189F177/639DBFB4" Ref="R79"  Part="1" 
AR Path="/64D2DF1E/618A142B/639DBFB4" Ref="R83"  Part="1" 
AR Path="/64D2DF1E/618A143A/639DBFB4" Ref="R87"  Part="1" 
AR Path="/64D2DF1E/618A4047/639DBFB4" Ref="R91"  Part="1" 
AR Path="/64D2DF1E/618A4056/639DBFB4" Ref="R95"  Part="1" 
AR Path="/64D2DF1E/618A4065/639DBFB4" Ref="R99"  Part="1" 
AR Path="/64D2DF1E/618A4074/639DBFB4" Ref="R103"  Part="1" 
AR Path="/64D2DF1E/618ABD34/639DBFB4" Ref="R107"  Part="1" 
AR Path="/64D2DF1E/618ABD43/639DBFB4" Ref="R111"  Part="1" 
AR Path="/64D2DF1E/618ABD52/639DBFB4" Ref="R115"  Part="1" 
AR Path="/64D2DF1E/618ABD61/639DBFB4" Ref="R119"  Part="1" 
F 0 "R119" V 4545 4050 50  0000 C CNN
F 1 "1k" V 4636 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4790 4040 50  0001 C CNN
F 3 "~" H 4750 4050 50  0001 C CNN
	1    4750 4050
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NPN_BEC Q?
U 1 1 639DBFBA
P 5150 4050
AR Path="/6183FAE6/6232C4EF/639DBFBA" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623C263E/639DBFBA" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623D514A/639DBFBA" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623D5718/639DBFBA" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623DF4E1/639DBFBA" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623E7DB1/639DBFBA" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623E7DC0/639DBFBA" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/62A081E6/639DBFBA" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/61899537/639DBFBA" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/6189F17F/639DBFBA" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/618A1433/639DBFBA" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/618A1442/639DBFBA" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/618A404F/639DBFBA" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/618A405E/639DBFBA" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/618A406D/639DBFBA" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/618A407C/639DBFBA" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/618ABD3C/639DBFBA" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/618ABD4B/639DBFBA" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/618ABD5A/639DBFBA" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/618ABD69/639DBFBA" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/61886B73/639DBFBA" Ref="Q4"  Part="1" 
AR Path="/64D2DF1E/6189F177/639DBFBA" Ref="Q6"  Part="1" 
AR Path="/64D2DF1E/618A142B/639DBFBA" Ref="Q8"  Part="1" 
AR Path="/64D2DF1E/618A143A/639DBFBA" Ref="Q10"  Part="1" 
AR Path="/64D2DF1E/618A4047/639DBFBA" Ref="Q12"  Part="1" 
AR Path="/64D2DF1E/618A4056/639DBFBA" Ref="Q14"  Part="1" 
AR Path="/64D2DF1E/618A4065/639DBFBA" Ref="Q16"  Part="1" 
AR Path="/64D2DF1E/618A4074/639DBFBA" Ref="Q18"  Part="1" 
AR Path="/64D2DF1E/618ABD34/639DBFBA" Ref="Q20"  Part="1" 
AR Path="/64D2DF1E/618ABD43/639DBFBA" Ref="Q22"  Part="1" 
AR Path="/64D2DF1E/618ABD52/639DBFBA" Ref="Q24"  Part="1" 
AR Path="/64D2DF1E/618ABD61/639DBFBA" Ref="Q26"  Part="1" 
F 0 "Q26" H 5341 4096 50  0000 L CNN
F 1 "MMBT2222" H 5341 4005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5350 4150 50  0001 C CNN
F 3 "~" H 5150 4050 50  0001 C CNN
	1    5150 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4050 4950 4050
Wire Wire Line
	4500 4050 4600 4050
$Comp
L Device:D_ALT D?
U 1 1 639DBFC4
P 5250 4450
AR Path="/64D2DF1E/62A081E6/639DBFC4" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/61899537/639DBFC4" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/6189F17F/639DBFC4" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/618A1433/639DBFC4" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/618A1442/639DBFC4" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/618A404F/639DBFC4" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/618A405E/639DBFC4" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/618A406D/639DBFC4" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/618A407C/639DBFC4" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/618ABD3C/639DBFC4" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/618ABD4B/639DBFC4" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/618ABD5A/639DBFC4" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/618ABD69/639DBFC4" Ref="D?"  Part="1" 
AR Path="/64D2DF1E/61886B73/639DBFC4" Ref="D6"  Part="1" 
AR Path="/64D2DF1E/6189F177/639DBFC4" Ref="D8"  Part="1" 
AR Path="/64D2DF1E/618A142B/639DBFC4" Ref="D10"  Part="1" 
AR Path="/64D2DF1E/618A143A/639DBFC4" Ref="D12"  Part="1" 
AR Path="/64D2DF1E/618A4047/639DBFC4" Ref="D14"  Part="1" 
AR Path="/64D2DF1E/618A4056/639DBFC4" Ref="D16"  Part="1" 
AR Path="/64D2DF1E/618A4065/639DBFC4" Ref="D18"  Part="1" 
AR Path="/64D2DF1E/618A4074/639DBFC4" Ref="D20"  Part="1" 
AR Path="/64D2DF1E/618ABD34/639DBFC4" Ref="D22"  Part="1" 
AR Path="/64D2DF1E/618ABD43/639DBFC4" Ref="D24"  Part="1" 
AR Path="/64D2DF1E/618ABD52/639DBFC4" Ref="D26"  Part="1" 
AR Path="/64D2DF1E/618ABD61/639DBFC4" Ref="D28"  Part="1" 
F 0 "D28" V 5296 4370 50  0000 R CNN
F 1 "1N4148" V 5205 4370 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" H 5250 4450 50  0001 C CNN
F 3 "~" H 5250 4450 50  0001 C CNN
	1    5250 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 4250 5250 4300
Wire Wire Line
	5250 4600 5250 4650
$Comp
L power:GND #PWR?
U 1 1 639DBFCC
P 5250 4650
AR Path="/64D2DF1E/62A081E6/639DBFCC" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/61899537/639DBFCC" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/6189F17F/639DBFCC" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/618A1433/639DBFCC" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/618A1442/639DBFCC" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/618A404F/639DBFCC" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/618A405E/639DBFCC" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/618A406D/639DBFCC" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/618A407C/639DBFCC" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/618ABD3C/639DBFCC" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/618ABD4B/639DBFCC" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/618ABD5A/639DBFCC" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/618ABD69/639DBFCC" Ref="#PWR?"  Part="1" 
AR Path="/64D2DF1E/61886B73/639DBFCC" Ref="#PWR059"  Part="1" 
AR Path="/64D2DF1E/6189F177/639DBFCC" Ref="#PWR061"  Part="1" 
AR Path="/64D2DF1E/618A142B/639DBFCC" Ref="#PWR063"  Part="1" 
AR Path="/64D2DF1E/618A143A/639DBFCC" Ref="#PWR065"  Part="1" 
AR Path="/64D2DF1E/618A4047/639DBFCC" Ref="#PWR067"  Part="1" 
AR Path="/64D2DF1E/618A4056/639DBFCC" Ref="#PWR069"  Part="1" 
AR Path="/64D2DF1E/618A4065/639DBFCC" Ref="#PWR071"  Part="1" 
AR Path="/64D2DF1E/618A4074/639DBFCC" Ref="#PWR073"  Part="1" 
AR Path="/64D2DF1E/618ABD34/639DBFCC" Ref="#PWR075"  Part="1" 
AR Path="/64D2DF1E/618ABD43/639DBFCC" Ref="#PWR077"  Part="1" 
AR Path="/64D2DF1E/618ABD52/639DBFCC" Ref="#PWR079"  Part="1" 
AR Path="/64D2DF1E/618ABD61/639DBFCC" Ref="#PWR081"  Part="1" 
F 0 "#PWR081" H 5250 4400 50  0001 C CNN
F 1 "GND" H 5255 4477 50  0000 C CNN
F 2 "" H 5250 4650 50  0001 C CNN
F 3 "" H 5250 4650 50  0001 C CNN
	1    5250 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3850 5250 3750
Wire Wire Line
	5250 3750 5600 3750
$EndSCHEMATC