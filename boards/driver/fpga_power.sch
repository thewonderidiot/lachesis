EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLedger 17000 11000
encoding utf-8
Sheet 68 69
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
L lachesis:Cmod_A7 A?
U 1 1 6181BB57
P 6400 6900
AR Path="/6181BB57" Ref="A?"  Part="1" 
AR Path="/652D8F7B/6181BB57" Ref="A1"  Part="1" 
F 0 "A1" H 6350 8150 50  0000 L CNN
F 1 "Cmod_A7" H 6250 5550 50  0000 L CNN
F 2 "" H 6650 6800 50  0001 C CNN
F 3 "~" H 6650 6800 50  0001 C CNN
	1    6400 6900
	1    0    0    -1  
$EndComp
NoConn ~ 6000 8100
$Comp
L lachesis:Cmod_A7 A?
U 2 1 6181F93E
P 7350 6900
AR Path="/6181F93E" Ref="A?"  Part="2" 
AR Path="/652D8F7B/6181F93E" Ref="A1"  Part="2" 
F 0 "A1" H 7350 8150 50  0000 C CNN
F 1 "Cmod_A7" H 7350 5550 50  0000 C CNN
F 2 "" H 7600 6800 50  0001 C CNN
F 3 "~" H 7600 6800 50  0001 C CNN
	2    7350 6900
	1    0    0    -1  
$EndComp
$Comp
L lachesis:Cmod_A7 A?
U 3 1 61824B0A
P 7000 9050
AR Path="/61824B0A" Ref="A?"  Part="3" 
AR Path="/652D8F7B/61824B0A" Ref="A1"  Part="3" 
F 0 "A1" H 7000 9400 50  0000 C CNN
F 1 "Cmod_A7" H 7000 8600 50  0000 C CNN
F 2 "" H 7250 8950 50  0001 C CNN
F 3 "~" H 7250 8950 50  0001 C CNN
	3    7000 9050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0122
U 1 1 6182DB80
P 6150 9300
F 0 "#PWR0122" H 6150 9150 50  0001 C CNN
F 1 "+3.3V" H 6165 9473 50  0000 C CNN
F 2 "" H 6150 9300 50  0001 C CNN
F 3 "" H 6150 9300 50  0001 C CNN
	1    6150 9300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0114
U 1 1 61834E6F
P 3450 4750
F 0 "#PWR0114" H 3450 4600 50  0001 C CNN
F 1 "+3.3V" H 3465 4923 50  0000 C CNN
F 2 "" H 3450 4750 50  0001 C CNN
F 3 "" H 3450 4750 50  0001 C CNN
	1    3450 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4750 3450 4800
$Comp
L power:GND #PWR0115
U 1 1 61836FBA
P 3450 6550
F 0 "#PWR0115" H 3450 6300 50  0001 C CNN
F 1 "GND" H 3455 6377 50  0000 C CNN
F 2 "" H 3450 6550 50  0001 C CNN
F 3 "" H 3450 6550 50  0001 C CNN
	1    3450 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 6550 3450 6500
Wire Wire Line
	2950 6150 2900 6150
$Comp
L power:+3.3V #PWR0109
U 1 1 61839F36
P 2700 6100
F 0 "#PWR0109" H 2700 5950 50  0001 C CNN
F 1 "+3.3V" H 2715 6273 50  0000 C CNN
F 2 "" H 2700 6100 50  0001 C CNN
F 3 "" H 2700 6100 50  0001 C CNN
	1    2700 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 6050 2800 6050
Wire Wire Line
	2800 6050 2800 6150
Wire Wire Line
	2800 6150 2700 6150
Wire Wire Line
	2700 6150 2700 6100
$Comp
L 74xx:74HC245 U9
U 1 1 6182A1C6
P 3450 5650
F 0 "U9" H 3850 5000 50  0000 C CNN
F 1 "74LVC245" H 3800 4900 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 3450 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 3450 5650 50  0001 C CNN
	1    3450 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6500 3450 6500
Wire Wire Line
	2900 6150 2900 6500
Connection ~ 3450 6500
Wire Wire Line
	3450 6500 3450 6450
$Comp
L power:+3.3V #PWR0116
U 1 1 6183E6EA
P 3450 7050
F 0 "#PWR0116" H 3450 6900 50  0001 C CNN
F 1 "+3.3V" H 3465 7223 50  0000 C CNN
F 2 "" H 3450 7050 50  0001 C CNN
F 3 "" H 3450 7050 50  0001 C CNN
	1    3450 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 7050 3450 7100
$Comp
L power:GND #PWR0117
U 1 1 6183E703
P 3450 8850
F 0 "#PWR0117" H 3450 8600 50  0001 C CNN
F 1 "GND" H 3455 8677 50  0000 C CNN
F 2 "" H 3450 8850 50  0001 C CNN
F 3 "" H 3450 8850 50  0001 C CNN
	1    3450 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 8850 3450 8800
Wire Wire Line
	2950 8450 2900 8450
$Comp
L power:+3.3V #PWR0110
U 1 1 6183E70F
P 2700 8400
F 0 "#PWR0110" H 2700 8250 50  0001 C CNN
F 1 "+3.3V" H 2715 8573 50  0000 C CNN
F 2 "" H 2700 8400 50  0001 C CNN
F 3 "" H 2700 8400 50  0001 C CNN
	1    2700 8400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 8350 2800 8350
Wire Wire Line
	2800 8350 2800 8450
Wire Wire Line
	2800 8450 2700 8450
Wire Wire Line
	2700 8450 2700 8400
$Comp
L 74xx:74HC245 U10
U 1 1 6183E71D
P 3450 7950
F 0 "U10" H 3850 7300 50  0000 C CNN
F 1 "74LVC245" H 3800 7200 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 3450 7950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 3450 7950 50  0001 C CNN
	1    3450 7950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 8800 3450 8800
Wire Wire Line
	2900 8450 2900 8800
Connection ~ 3450 8800
Wire Wire Line
	3450 8800 3450 8750
Wire Wire Line
	2950 5150 2650 5150
Text Label 2700 5150 0    50   ~ 0
SA1
Wire Wire Line
	2950 5250 2650 5250
Text Label 2700 5250 0    50   ~ 0
SA2
Wire Wire Line
	2950 5350 2650 5350
Text Label 2700 5350 0    50   ~ 0
SA3
Wire Wire Line
	2950 5450 2650 5450
Text Label 2700 5450 0    50   ~ 0
SA4
Wire Wire Line
	2950 5550 2650 5550
Text Label 2700 5550 0    50   ~ 0
SA5
Wire Wire Line
	2950 5650 2650 5650
Text Label 2700 5650 0    50   ~ 0
SA6
Wire Wire Line
	2950 5750 2650 5750
Text Label 2700 5750 0    50   ~ 0
SA7
Wire Wire Line
	2950 5850 2650 5850
Text Label 2700 5850 0    50   ~ 0
SA8
Wire Wire Line
	2950 7450 2650 7450
Text Label 2700 7450 0    50   ~ 0
SA9
Wire Wire Line
	2950 7550 2650 7550
Text Label 2700 7550 0    50   ~ 0
SA10
Wire Wire Line
	2950 7650 2650 7650
Text Label 2700 7650 0    50   ~ 0
SA11
Wire Wire Line
	2950 7750 2650 7750
Text Label 2700 7750 0    50   ~ 0
SA12
Wire Wire Line
	2950 7850 2650 7850
Text Label 2700 7850 0    50   ~ 0
SA13
Wire Wire Line
	2950 7950 2650 7950
Text Label 2700 7950 0    50   ~ 0
SA14
Wire Wire Line
	2950 8050 2650 8050
Text Label 2700 8050 0    50   ~ 0
SA15
Wire Wire Line
	2950 8150 2650 8150
Text Label 2700 8150 0    50   ~ 0
SA16
Entry Wire Line
	2550 7350 2650 7450
Entry Wire Line
	2550 7450 2650 7550
Entry Wire Line
	2550 7550 2650 7650
Entry Wire Line
	2550 7650 2650 7750
Entry Wire Line
	2550 7750 2650 7850
Entry Wire Line
	2550 7850 2650 7950
Entry Wire Line
	2550 7950 2650 8050
Entry Wire Line
	2550 8050 2650 8150
Entry Wire Line
	2550 5050 2650 5150
Entry Wire Line
	2550 5150 2650 5250
Entry Wire Line
	2550 5250 2650 5350
Entry Wire Line
	2550 5350 2650 5450
Entry Wire Line
	2550 5450 2650 5550
Entry Wire Line
	2550 5550 2650 5650
Entry Wire Line
	2550 5650 2650 5750
Entry Wire Line
	2550 5750 2650 5850
Wire Bus Line
	2550 4950 2350 4950
Text HLabel 2350 4950 0    50   Input ~ 0
SA[1..16]
NoConn ~ 6000 7300
NoConn ~ 6000 7200
Wire Wire Line
	6150 9350 6150 9300
Wire Wire Line
	6150 9350 6400 9350
Wire Wire Line
	6400 9250 6350 9250
Wire Wire Line
	6350 9250 6350 9500
$Comp
L power:GND #PWR0123
U 1 1 61953BD9
P 6350 9500
F 0 "#PWR0123" H 6350 9250 50  0001 C CNN
F 1 "GND" H 6355 9327 50  0000 C CNN
F 2 "" H 6350 9500 50  0001 C CNN
F 3 "" H 6350 9500 50  0001 C CNN
	1    6350 9500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0127
U 1 1 619554A7
P 7850 9300
F 0 "#PWR0127" H 7850 9150 50  0001 C CNN
F 1 "+3.3V" H 7865 9473 50  0000 C CNN
F 2 "" H 7850 9300 50  0001 C CNN
F 3 "" H 7850 9300 50  0001 C CNN
	1    7850 9300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7850 9350 7850 9300
Wire Wire Line
	7850 9350 7600 9350
Wire Wire Line
	7600 9250 7650 9250
Wire Wire Line
	7650 9250 7650 9500
$Comp
L power:GND #PWR0125
U 1 1 619554C3
P 7650 9500
F 0 "#PWR0125" H 7650 9250 50  0001 C CNN
F 1 "GND" H 7655 9327 50  0000 C CNN
F 2 "" H 7650 9500 50  0001 C CNN
F 3 "" H 7650 9500 50  0001 C CNN
	1    7650 9500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3950 5150 4900 5150
Wire Wire Line
	4900 5150 4900 5800
Wire Wire Line
	4900 5800 6000 5800
Wire Wire Line
	3950 5250 4800 5250
Wire Wire Line
	4800 5250 4800 5900
Wire Wire Line
	4800 5900 6000 5900
Wire Wire Line
	3950 5350 4700 5350
Wire Wire Line
	4700 5350 4700 6000
Wire Wire Line
	4700 6000 6000 6000
Wire Wire Line
	3950 5450 4600 5450
Wire Wire Line
	4600 5450 4600 6100
Wire Wire Line
	4600 6100 6000 6100
Wire Wire Line
	3950 5550 4500 5550
Wire Wire Line
	4500 5550 4500 6200
Wire Wire Line
	4500 6200 6000 6200
Wire Wire Line
	3950 5650 4400 5650
Wire Wire Line
	4400 5650 4400 6300
Wire Wire Line
	4400 6300 6000 6300
Wire Wire Line
	3950 5750 4300 5750
Wire Wire Line
	4300 5750 4300 6400
Wire Wire Line
	4300 6400 6000 6400
Wire Wire Line
	3950 5850 4200 5850
Wire Wire Line
	4200 5850 4200 6500
Wire Wire Line
	4200 6500 6000 6500
Wire Wire Line
	3950 7450 4200 7450
Wire Wire Line
	4200 7450 4200 6600
Wire Wire Line
	4200 6600 6000 6600
Wire Wire Line
	3950 7550 4300 7550
Wire Wire Line
	4300 7550 4300 6700
Wire Wire Line
	4300 6700 6000 6700
Wire Wire Line
	3950 7650 4400 7650
Wire Wire Line
	4400 7650 4400 6800
Wire Wire Line
	4400 6800 6000 6800
Wire Wire Line
	3950 7750 4500 7750
Wire Wire Line
	4500 7750 4500 6900
Wire Wire Line
	4500 6900 6000 6900
Wire Wire Line
	3950 7850 4600 7850
Wire Wire Line
	4600 7850 4600 7000
Wire Wire Line
	4600 7000 6000 7000
Wire Wire Line
	3950 7950 4700 7950
Wire Wire Line
	4700 7950 4700 7100
Wire Wire Line
	4700 7100 6000 7100
Wire Wire Line
	3950 8050 4800 8050
Wire Wire Line
	4800 8050 4800 7400
Wire Wire Line
	4800 7400 6000 7400
Wire Wire Line
	3950 8150 4900 8150
Wire Wire Line
	4900 8150 4900 7500
Wire Wire Line
	4900 7500 6000 7500
Wire Wire Line
	13650 2900 14100 2900
Text Label 13900 2900 0    50   ~ 0
~IL1
Entry Wire Line
	14100 2900 14200 2800
Wire Bus Line
	14200 2750 14250 2750
Text HLabel 14250 2750 2    50   Output ~ 0
~IL[1..8]
NoConn ~ 6400 9150
NoConn ~ 6400 9050
NoConn ~ 6400 8950
NoConn ~ 6400 8850
NoConn ~ 7600 8850
NoConn ~ 7600 8950
NoConn ~ 7600 9050
NoConn ~ 7600 9150
Text Label 5950 5800 2    50   ~ 0
SAF1
Text Label 5950 5900 2    50   ~ 0
SAF2
Text Label 5950 6000 2    50   ~ 0
SAF3
Text Label 5950 6100 2    50   ~ 0
SAF4
Text Label 5950 6200 2    50   ~ 0
SAF5
Text Label 5950 6300 2    50   ~ 0
SAF6
Text Label 5950 6400 2    50   ~ 0
SAF7
Text Label 5950 6500 2    50   ~ 0
SAF8
Text Label 5950 6600 2    50   ~ 0
SAF9
Text Label 5950 6700 2    50   ~ 0
SAF10
Text Label 5950 6800 2    50   ~ 0
SAF11
Text Label 5950 6900 2    50   ~ 0
SAF12
Text Label 5950 7000 2    50   ~ 0
SAF13
Text Label 5950 7100 2    50   ~ 0
SAF14
Text Label 5950 7400 2    50   ~ 0
SAF15
Text Label 5950 7500 2    50   ~ 0
SAF16
Wire Wire Line
	6000 7600 5600 7600
Text HLabel 5600 7600 0    50   Output ~ 0
SBF
$Comp
L lachesis:74LVC2G04 U14
U 1 1 627CD8E7
P 13400 2900
F 0 "U14" H 13450 3000 50  0000 C CNN
F 1 "74LVC2G04" H 13600 2800 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 13400 2900 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 13400 2900 50  0001 C CNN
	1    13400 2900
	1    0    0    -1  
$EndComp
$Comp
L lachesis:74LVC2G04 U14
U 2 1 627CF2E2
P 13400 3200
F 0 "U14" H 13450 3300 50  0000 C CNN
F 1 "74LVC2G04" H 13600 3100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 13400 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 13400 3200 50  0001 C CNN
	2    13400 3200
	1    0    0    -1  
$EndComp
$Comp
L lachesis:74LVC2G04 U15
U 1 1 627D8173
P 13400 3500
F 0 "U15" H 13450 3600 50  0000 C CNN
F 1 "74LVC2G04" H 13600 3400 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 13400 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 13400 3500 50  0001 C CNN
	1    13400 3500
	1    0    0    -1  
$EndComp
$Comp
L lachesis:74LVC2G04 U15
U 2 1 627D8195
P 13400 3800
F 0 "U15" H 13450 3900 50  0000 C CNN
F 1 "74LVC2G04" H 13600 3700 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 13400 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 13400 3800 50  0001 C CNN
	2    13400 3800
	1    0    0    -1  
$EndComp
$Comp
L lachesis:74LVC2G04 U16
U 1 1 627EA548
P 13400 4100
F 0 "U16" H 13450 4200 50  0000 C CNN
F 1 "74LVC2G04" H 13600 4000 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 13400 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 13400 4100 50  0001 C CNN
	1    13400 4100
	1    0    0    -1  
$EndComp
$Comp
L lachesis:74LVC2G04 U16
U 2 1 627EA56A
P 13400 4400
F 0 "U16" H 13450 4500 50  0000 C CNN
F 1 "74LVC2G04" H 13600 4300 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 13400 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 13400 4400 50  0001 C CNN
	2    13400 4400
	1    0    0    -1  
$EndComp
$Comp
L lachesis:74LVC2G04 U17
U 1 1 627EA574
P 13400 4700
F 0 "U17" H 13450 4800 50  0000 C CNN
F 1 "74LVC2G04" H 13600 4600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 13400 4700 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 13400 4700 50  0001 C CNN
	1    13400 4700
	1    0    0    -1  
$EndComp
$Comp
L lachesis:74LVC2G04 U17
U 2 1 627EA57E
P 13400 5000
F 0 "U17" H 13450 5100 50  0000 C CNN
F 1 "74LVC2G04" H 13600 4900 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 13400 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 13400 5000 50  0001 C CNN
	2    13400 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	13650 3200 14100 3200
Text Label 13900 3200 0    50   ~ 0
~IL2
Entry Wire Line
	14100 3200 14200 3100
Wire Wire Line
	13650 3500 14100 3500
Text Label 13900 3500 0    50   ~ 0
~IL3
Entry Wire Line
	14100 3500 14200 3400
Wire Wire Line
	13650 3800 14100 3800
Text Label 13900 3800 0    50   ~ 0
~IL4
Entry Wire Line
	14100 3800 14200 3700
Wire Wire Line
	13650 4100 14100 4100
Text Label 13900 4100 0    50   ~ 0
~IL5
Entry Wire Line
	14100 4100 14200 4000
Wire Wire Line
	13650 4400 14100 4400
Text Label 13900 4400 0    50   ~ 0
~IL6
Entry Wire Line
	14100 4400 14200 4300
Wire Wire Line
	13650 4700 14100 4700
Text Label 13900 4700 0    50   ~ 0
~IL7
Entry Wire Line
	14100 4700 14200 4600
Wire Wire Line
	13650 5000 14100 5000
Text Label 13900 5000 0    50   ~ 0
~IL8
Entry Wire Line
	14100 5000 14200 4900
NoConn ~ 6000 7700
NoConn ~ 6000 7800
NoConn ~ 6000 7900
NoConn ~ 6000 8000
$Comp
L power:GND #PWR0126
U 1 1 628D777D
P 7800 8200
F 0 "#PWR0126" H 7800 7950 50  0001 C CNN
F 1 "GND" H 7805 8027 50  0000 C CNN
F 2 "" H 7800 8200 50  0001 C CNN
F 3 "" H 7800 8200 50  0001 C CNN
	1    7800 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 8100 7800 8100
Wire Wire Line
	7800 8100 7800 8200
Wire Wire Line
	13100 2900 12900 2900
Text Label 12900 2900 0    50   ~ 0
IL1
Wire Wire Line
	13100 3200 12900 3200
Text Label 12900 3200 0    50   ~ 0
IL2
Wire Wire Line
	13100 3500 12900 3500
Text Label 12900 3500 0    50   ~ 0
IL3
Wire Wire Line
	13100 3800 12900 3800
Text Label 12900 3800 0    50   ~ 0
IL4
Wire Wire Line
	13100 4100 12900 4100
Text Label 12900 4100 0    50   ~ 0
IL5
Wire Wire Line
	13100 4400 12900 4400
Text Label 12900 4400 0    50   ~ 0
IL6
Wire Wire Line
	13100 4700 12900 4700
Text Label 12900 4700 0    50   ~ 0
IL7
Wire Wire Line
	13100 5000 12900 5000
Text Label 12900 5000 0    50   ~ 0
IL8
$Comp
L lachesis:74LVC2G04 U15
U 3 1 62918C2E
P 13950 7900
F 0 "U15" H 13850 8000 50  0000 L CNN
F 1 "74LVC2G04" H 13750 7900 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 13950 7900 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 13950 7900 50  0001 C CNN
	3    13950 7900
	1    0    0    -1  
$EndComp
$Comp
L lachesis:74LVC2G04 U16
U 3 1 62920C81
P 14550 7900
F 0 "U16" H 14450 8000 50  0000 L CNN
F 1 "74LVC2G04" H 14350 7900 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 14550 7900 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 14550 7900 50  0001 C CNN
	3    14550 7900
	1    0    0    -1  
$EndComp
$Comp
L lachesis:74LVC2G04 U17
U 3 1 62920CA3
P 15150 7900
F 0 "U17" H 15050 8000 50  0000 L CNN
F 1 "74LVC2G04" H 14950 7900 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 15150 7900 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 15150 7900 50  0001 C CNN
	3    15150 7900
	1    0    0    -1  
$EndComp
Wire Wire Line
	15150 8300 15150 8250
Wire Wire Line
	14550 8250 14550 8300
Connection ~ 14550 8300
Wire Wire Line
	14550 8300 15150 8300
Wire Wire Line
	13950 8250 13950 8300
Connection ~ 13950 8300
Wire Wire Line
	13950 8300 14250 8300
$Comp
L power:GND #PWR0139
U 1 1 62942968
P 14250 8350
F 0 "#PWR0139" H 14250 8100 50  0001 C CNN
F 1 "GND" H 14255 8177 50  0000 C CNN
F 2 "" H 14250 8350 50  0001 C CNN
F 3 "" H 14250 8350 50  0001 C CNN
	1    14250 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	14250 8350 14250 8300
Connection ~ 14250 8300
Wire Wire Line
	14250 8300 14550 8300
Wire Wire Line
	15150 7450 15150 7400
Wire Wire Line
	15150 7400 14550 7400
Wire Wire Line
	13950 7450 13950 7400
Connection ~ 13950 7400
Wire Wire Line
	14550 7450 14550 7400
Connection ~ 14550 7400
Wire Wire Line
	14550 7400 14250 7400
Wire Wire Line
	14250 7350 14250 7400
Connection ~ 14250 7400
Wire Wire Line
	14250 7400 13950 7400
$Comp
L power:+3.3V #PWR0138
U 1 1 62954E8A
P 14250 7350
F 0 "#PWR0138" H 14250 7200 50  0001 C CNN
F 1 "+3.3V" H 14265 7523 50  0000 C CNN
F 2 "" H 14250 7350 50  0001 C CNN
F 3 "" H 14250 7350 50  0001 C CNN
	1    14250 7350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack J1
U 1 1 6196E058
P 2850 1550
F 0 "J1" H 2907 1783 50  0000 C CNN
F 1 "Barrel_Jack" H 2907 1784 50  0001 C CNN
F 2 "" H 2900 1510 50  0001 C CNN
F 3 "~" H 2900 1510 50  0001 C CNN
	1    2850 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1650 3250 1650
Wire Wire Line
	3250 1650 3250 1750
$Comp
L power:GND #PWR0113
U 1 1 61982C18
P 3250 1750
F 0 "#PWR0113" H 3250 1500 50  0001 C CNN
F 1 "GND" H 3255 1577 50  0000 C CNN
F 2 "" H 3250 1750 50  0001 C CNN
F 3 "" H 3250 1750 50  0001 C CNN
	1    3250 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C46
U 1 1 619FA4BD
P 3200 7100
F 0 "C46" V 3429 7100 50  0000 C CNN
F 1 "0.1uF" V 3338 7100 50  0000 C CNN
F 2 "" H 3200 7100 50  0001 C CNN
F 3 "~" H 3200 7100 50  0001 C CNN
	1    3200 7100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 7100 3300 7100
Connection ~ 3450 7100
Wire Wire Line
	3450 7100 3450 7150
Wire Wire Line
	3100 7100 3000 7100
Wire Wire Line
	3000 7100 3000 7150
$Comp
L power:GND #PWR0112
U 1 1 61A182C5
P 3000 7150
F 0 "#PWR0112" H 3000 6900 50  0001 C CNN
F 1 "GND" H 3005 6977 50  0000 C CNN
F 2 "" H 3000 7150 50  0001 C CNN
F 3 "" H 3000 7150 50  0001 C CNN
	1    3000 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C45
U 1 1 61A18BD2
P 3200 4800
F 0 "C45" V 3429 4800 50  0000 C CNN
F 1 "0.1uF" V 3338 4800 50  0000 C CNN
F 2 "" H 3200 4800 50  0001 C CNN
F 3 "~" H 3200 4800 50  0001 C CNN
	1    3200 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3100 4800 3000 4800
Wire Wire Line
	3000 4800 3000 4850
$Comp
L power:GND #PWR0111
U 1 1 61A18BDE
P 3000 4850
F 0 "#PWR0111" H 3000 4600 50  0001 C CNN
F 1 "GND" H 3005 4677 50  0000 C CNN
F 2 "" H 3000 4850 50  0001 C CNN
F 3 "" H 3000 4850 50  0001 C CNN
	1    3000 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4800 3300 4800
Connection ~ 3450 4800
Wire Wire Line
	3450 4800 3450 4850
$Comp
L lachesis:+14V #PWR0132
U 1 1 61A7153C
P 9400 1400
F 0 "#PWR0132" H 9400 1250 50  0001 C CNN
F 1 "+14V" H 9415 1573 50  0000 C CNN
F 2 "" H 9400 1400 50  0001 C CNN
F 3 "" H 9400 1400 50  0001 C CNN
	1    9400 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 1450 9400 1400
$Comp
L power:PWR_FLAG #FLG02
U 1 1 61A7CD30
P 9450 1450
F 0 "#FLG02" H 9450 1525 50  0001 C CNN
F 1 "PWR_FLAG" H 9450 1623 50  0001 C CNN
F 2 "" H 9450 1450 50  0001 C CNN
F 3 "~" H 9450 1450 50  0001 C CNN
	1    9450 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 1450 3250 1450
$Comp
L Converter_DCDC:JTE0624D05 U11
U 1 1 61AB75DA
P 4250 2450
F 0 "U11" H 4250 2917 50  0000 C CNN
F 1 "JTE0624D05" H 4250 2826 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_XP_POWER_JTExxxxDxx_THT" H 4250 2050 50  0001 C CIN
F 3 "https://www.xppower.com/Portals/0/pdfs/SF_JTE06.pdf" H 4250 1950 50  0001 C CNN
	1    4250 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 61AB8849
P 3650 2700
F 0 "#PWR0118" H 3650 2450 50  0001 C CNN
F 1 "GND" H 3655 2527 50  0000 C CNN
F 2 "" H 3650 2700 50  0001 C CNN
F 3 "" H 3650 2700 50  0001 C CNN
	1    3650 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2700 3650 2650
Wire Wire Line
	3650 2650 3750 2650
Wire Wire Line
	3650 1450 3650 2250
Wire Wire Line
	3650 2250 3750 2250
$Comp
L power:GND #PWR0119
U 1 1 61B234C5
P 4850 2750
F 0 "#PWR0119" H 4850 2500 50  0001 C CNN
F 1 "GND" H 4855 2577 50  0000 C CNN
F 2 "" H 4850 2750 50  0001 C CNN
F 3 "" H 4850 2750 50  0001 C CNN
	1    4850 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2450 4850 2450
Wire Wire Line
	4850 2450 4850 2750
Wire Wire Line
	4750 2250 5150 2250
Wire Wire Line
	5150 2250 5150 2200
$Comp
L power:+5V #PWR0120
U 1 1 61B55BF9
P 5150 2200
F 0 "#PWR0120" H 5150 2050 50  0001 C CNN
F 1 "+5V" H 5150 2350 50  0000 C CNN
F 2 "" H 5150 2200 50  0001 C CNN
F 3 "" H 5150 2200 50  0001 C CNN
	1    5150 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2650 5150 2650
Wire Wire Line
	5150 2650 5150 2600
$Comp
L power:-5V #PWR0121
U 1 1 61B7DDFD
P 5150 2600
F 0 "#PWR0121" H 5150 2700 50  0001 C CNN
F 1 "-5V" H 5150 2750 50  0000 C CNN
F 2 "" H 5150 2600 50  0001 C CNN
F 3 "" H 5150 2600 50  0001 C CNN
	1    5150 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1450 9400 1450
Connection ~ 9400 1450
Wire Wire Line
	9650 6700 9500 6700
Connection ~ 9650 6700
Wire Wire Line
	9650 6750 9650 6700
$Comp
L power:GND #PWR0133
U 1 1 61A63B1A
P 9650 6950
F 0 "#PWR0133" H 9650 6700 50  0001 C CNN
F 1 "GND" H 9655 6777 50  0000 C CNN
F 2 "" H 9650 6950 50  0001 C CNN
F 3 "" H 9650 6950 50  0001 C CNN
	1    9650 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C49
U 1 1 61A43FC3
P 9650 6850
F 0 "C49" H 9558 6804 50  0000 R CNN
F 1 "0.1uF" H 9558 6895 50  0000 R CNN
F 2 "" H 9650 6850 50  0001 C CNN
F 3 "~" H 9650 6850 50  0001 C CNN
	1    9650 6850
	-1   0    0    1   
$EndComp
Text Label 7800 7600 0    50   ~ 0
STRA0
Wire Wire Line
	7750 7700 9750 7700
Text HLabel 8200 7500 2    50   Output ~ 0
IHENV
Wire Wire Line
	7750 7500 8200 7500
Wire Wire Line
	7750 6700 8600 6700
Text Label 7800 6700 0    50   ~ 0
IL1
Wire Wire Line
	7750 6800 8600 6800
Text Label 7800 6800 0    50   ~ 0
IL2
Wire Wire Line
	7750 6900 8600 6900
Text Label 7800 6900 0    50   ~ 0
IL3
Wire Wire Line
	7750 7000 8600 7000
Text Label 7800 7000 0    50   ~ 0
IL4
Wire Wire Line
	7750 7100 8600 7100
Text Label 7800 7100 0    50   ~ 0
IL5
Wire Wire Line
	7750 7200 8600 7200
Text Label 7800 7200 0    50   ~ 0
IL6
Wire Wire Line
	7750 7300 8600 7300
Text Label 7800 7300 0    50   ~ 0
IL7
Wire Wire Line
	7750 7400 8600 7400
Text Label 7800 7400 0    50   ~ 0
IL8
Entry Wire Line
	8600 6700 8700 6600
Entry Wire Line
	8600 6800 8700 6700
Entry Wire Line
	8600 6900 8700 6800
Entry Wire Line
	8600 7000 8700 6900
Entry Wire Line
	8600 7100 8700 7000
Entry Wire Line
	8600 7200 8700 7100
Entry Wire Line
	8600 7300 8700 7200
Entry Wire Line
	8600 7400 8700 7300
Wire Bus Line
	8700 6550 8800 6550
Text HLabel 8800 6550 2    50   Output ~ 0
IL[1..8]
Text Label 7800 7900 0    50   ~ 0
STRA3
Text Label 7800 7800 0    50   ~ 0
STRA2
Text Label 7800 7700 0    50   ~ 0
STRA1
Text HLabel 8100 6000 2    50   Output ~ 0
ROPER
Wire Wire Line
	7750 7900 9750 7900
Wire Wire Line
	7750 7800 9750 7800
Wire Wire Line
	7750 7600 9750 7600
Entry Wire Line
	8550 6600 8650 6500
Entry Wire Line
	8550 6500 8650 6400
Text HLabel 8800 6150 2    50   Output ~ 0
RESET[1..4]
Wire Bus Line
	8650 6150 8800 6150
Entry Wire Line
	8550 6400 8650 6300
Entry Wire Line
	8550 6300 8650 6200
Text HLabel 8800 5950 2    50   Output ~ 0
SET[1..2]
Wire Bus Line
	8600 5950 8800 5950
Entry Wire Line
	8500 6200 8600 6100
Entry Wire Line
	8500 6100 8600 6000
Text Label 7800 6600 0    50   ~ 0
RESET4
Wire Wire Line
	7750 6600 8550 6600
Text Label 7800 6500 0    50   ~ 0
RESET3
Wire Wire Line
	7750 6500 8550 6500
Text Label 7800 6400 0    50   ~ 0
RESET2
Wire Wire Line
	7750 6400 8550 6400
Text Label 7800 6300 0    50   ~ 0
RESET1
Wire Wire Line
	7750 6300 8550 6300
Text Label 7800 6200 0    50   ~ 0
SET2
Wire Wire Line
	7750 6200 8500 6200
Text Label 7800 6100 0    50   ~ 0
SET1
Wire Wire Line
	7750 6100 8500 6100
Wire Wire Line
	10250 8800 10250 8750
Connection ~ 10250 8800
Wire Wire Line
	9700 8800 10250 8800
Wire Wire Line
	9700 8300 9700 8800
Wire Wire Line
	9750 8300 9700 8300
Wire Wire Line
	10250 6700 10250 6750
Connection ~ 10250 6700
Wire Wire Line
	9500 7200 9750 7200
Wire Wire Line
	9500 6700 9500 7200
Wire Wire Line
	10250 6700 9650 6700
Text HLabel 11350 6950 2    50   Output ~ 0
STEN[1..12]
Wire Wire Line
	10250 6650 10250 6700
Wire Wire Line
	10250 8850 10250 8800
$Comp
L power:+3.3V #PWR0134
U 1 1 6187733D
P 10250 6650
F 0 "#PWR0134" H 10250 6500 50  0001 C CNN
F 1 "+3.3V" H 10265 6823 50  0000 C CNN
F 2 "" H 10250 6650 50  0001 C CNN
F 3 "" H 10250 6650 50  0001 C CNN
	1    10250 6650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 61876B09
P 10250 8850
F 0 "#PWR0135" H 10250 8600 50  0001 C CNN
F 1 "GND" H 10255 8677 50  0000 C CNN
F 2 "" H 10250 8850 50  0001 C CNN
F 3 "" H 10250 8850 50  0001 C CNN
	1    10250 8850
	1    0    0    -1  
$EndComp
Wire Bus Line
	11200 6950 11350 6950
Entry Wire Line
	11100 8200 11200 8100
Entry Wire Line
	11100 8100 11200 8000
Entry Wire Line
	11100 8000 11200 7900
Entry Wire Line
	11100 7900 11200 7800
Entry Wire Line
	11100 7800 11200 7700
Entry Wire Line
	11100 7700 11200 7600
Entry Wire Line
	11100 7600 11200 7500
Entry Wire Line
	11100 7500 11200 7400
Entry Wire Line
	11100 7400 11200 7300
Entry Wire Line
	11100 7300 11200 7200
Entry Wire Line
	11100 7200 11200 7100
Entry Wire Line
	11100 7100 11200 7000
Text Label 10800 8200 0    50   ~ 0
STEN12
Wire Wire Line
	10750 8200 11100 8200
Text Label 10800 8100 0    50   ~ 0
STEN11
Wire Wire Line
	10750 8100 11100 8100
Text Label 10800 8000 0    50   ~ 0
STEN10
Wire Wire Line
	10750 8000 11100 8000
Text Label 10800 7900 0    50   ~ 0
STEN9
Wire Wire Line
	10750 7900 11100 7900
Text Label 10800 7800 0    50   ~ 0
STEN8
Wire Wire Line
	10750 7800 11100 7800
Text Label 10800 7700 0    50   ~ 0
STEN7
Wire Wire Line
	10750 7700 11100 7700
Text Label 10800 7600 0    50   ~ 0
STEN6
Wire Wire Line
	10750 7600 11100 7600
Text Label 10800 7500 0    50   ~ 0
STEN5
Wire Wire Line
	10750 7500 11100 7500
Text Label 10800 7400 0    50   ~ 0
STEN4
Wire Wire Line
	10750 7400 11100 7400
Text Label 10800 7300 0    50   ~ 0
STEN3
Wire Wire Line
	10750 7300 11100 7300
Text Label 10800 7200 0    50   ~ 0
STEN2
Wire Wire Line
	10750 7200 11100 7200
Text Label 10800 7100 0    50   ~ 0
STEN1
Wire Wire Line
	10750 7100 11100 7100
NoConn ~ 10750 8300
NoConn ~ 10750 8400
NoConn ~ 10750 8500
NoConn ~ 10750 7000
$Comp
L lachesis:74HC4514 U13
U 1 1 6185C237
P 10250 7750
F 0 "U13" H 10650 6900 50  0000 C CNN
F 1 "74HC4514" H 10650 6800 50  0000 C CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 10250 7750 50  0001 C CNN
F 3 "" H 10250 7750 50  0001 C CNN
	1    10250 7750
	1    0    0    -1  
$EndComp
NoConn ~ 7750 8000
$Comp
L Device:C_Small C50
U 1 1 61CA0FBB
P 13350 6650
F 0 "C50" H 13258 6604 50  0000 R CNN
F 1 "0.1uF" H 13258 6695 50  0000 R CNN
F 2 "" H 13350 6650 50  0001 C CNN
F 3 "~" H 13350 6650 50  0001 C CNN
	1    13350 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	13950 7400 13350 7400
Wire Wire Line
	13350 7400 13350 7450
Wire Wire Line
	13350 8300 13950 8300
Wire Wire Line
	13350 8250 13350 8300
$Comp
L lachesis:74LVC2G04 U14
U 3 1 6291715A
P 13350 7900
F 0 "U14" H 13250 8000 50  0000 L CNN
F 1 "74LVC2G04" H 13150 7900 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 13350 7900 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 13350 7900 50  0001 C CNN
	3    13350 7900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C51
U 1 1 61CC79AE
P 13950 6650
F 0 "C51" H 13858 6604 50  0000 R CNN
F 1 "0.1uF" H 13858 6695 50  0000 R CNN
F 2 "" H 13950 6650 50  0001 C CNN
F 3 "~" H 13950 6650 50  0001 C CNN
	1    13950 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C52
U 1 1 61CD34FB
P 14550 6650
F 0 "C52" H 14458 6604 50  0000 R CNN
F 1 "0.1uF" H 14458 6695 50  0000 R CNN
F 2 "" H 14550 6650 50  0001 C CNN
F 3 "~" H 14550 6650 50  0001 C CNN
	1    14550 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C53
U 1 1 61CD3513
P 15150 6650
F 0 "C53" H 15058 6604 50  0000 R CNN
F 1 "0.1uF" H 15058 6695 50  0000 R CNN
F 2 "" H 15150 6650 50  0001 C CNN
F 3 "~" H 15150 6650 50  0001 C CNN
	1    15150 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	15150 6800 15150 6750
Wire Wire Line
	14550 6750 14550 6800
Connection ~ 14550 6800
Wire Wire Line
	14550 6800 15150 6800
Wire Wire Line
	13950 6750 13950 6800
Connection ~ 13950 6800
Wire Wire Line
	13950 6800 14250 6800
$Comp
L power:GND #PWR0137
U 1 1 61CEBC29
P 14250 6850
F 0 "#PWR0137" H 14250 6600 50  0001 C CNN
F 1 "GND" H 14255 6677 50  0000 C CNN
F 2 "" H 14250 6850 50  0001 C CNN
F 3 "" H 14250 6850 50  0001 C CNN
	1    14250 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	14250 6850 14250 6800
Connection ~ 14250 6800
Wire Wire Line
	14250 6800 14550 6800
Wire Wire Line
	13350 6800 13950 6800
Wire Wire Line
	13350 6750 13350 6800
Wire Wire Line
	15150 6550 15150 6500
Wire Wire Line
	15150 6500 14550 6500
Wire Wire Line
	13950 6550 13950 6500
Connection ~ 13950 6500
Wire Wire Line
	14550 6550 14550 6500
Connection ~ 14550 6500
Wire Wire Line
	14550 6500 14250 6500
Wire Wire Line
	14250 6450 14250 6500
Connection ~ 14250 6500
Wire Wire Line
	14250 6500 13950 6500
$Comp
L power:+3.3V #PWR0136
U 1 1 61CF82D6
P 14250 6450
F 0 "#PWR0136" H 14250 6300 50  0001 C CNN
F 1 "+3.3V" H 14265 6623 50  0000 C CNN
F 2 "" H 14250 6450 50  0001 C CNN
F 3 "" H 14250 6450 50  0001 C CNN
	1    14250 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	13950 6500 13350 6500
Wire Wire Line
	13350 6500 13350 6550
$Comp
L power:PWR_FLAG #FLG01
U 1 1 61E02C47
P 3250 1500
F 0 "#FLG01" H 3250 1575 50  0001 C CNN
F 1 "PWR_FLAG" H 3250 1673 50  0001 C CNN
F 2 "" H 3250 1500 50  0001 C CNN
F 3 "~" H 3250 1500 50  0001 C CNN
	1    3250 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 1500 3250 1450
Connection ~ 3250 1450
Wire Wire Line
	3250 1450 3650 1450
$Comp
L Device:R_US R234
U 1 1 61F2A975
P 7100 1450
F 0 "R234" V 6895 1450 50  0000 C CNN
F 1 "0.025" V 6986 1450 50  0000 C CNN
F 2 "" V 7140 1440 50  0001 C CNN
F 3 "~" H 7100 1450 50  0001 C CNN
	1    7100 1450
	0    1    1    0   
$EndComp
Connection ~ 3650 1450
Text Label 7800 5800 0    50   ~ 0
EN_14V
Text Label 7800 5900 0    50   ~ 0
PG_14V
Wire Wire Line
	7750 5800 8550 5800
Wire Wire Line
	7750 1450 8500 1450
$Comp
L Device:Q_NMOS_DGS Q90
U 1 1 61A70612
P 7550 1550
F 0 "Q90" V 7892 1550 50  0000 C CNN
F 1 "IRF530" V 7801 1550 50  0000 C CNN
F 2 "" H 7750 1650 50  0001 C CNN
F 3 "~" H 7550 1550 50  0001 C CNN
	1    7550 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7250 1450 7300 1450
Wire Wire Line
	3650 1450 6550 1450
$Comp
L lachesis:LTC4231-1 U12
U 1 1 61999C5D
P 7400 3200
F 0 "U12" H 7050 2450 50  0000 C CNN
F 1 "LTC4231-1" H 7050 2350 50  0000 C CNN
F 2 "" H 7250 2900 50  0001 C CNN
F 3 "" H 7250 2900 50  0001 C CNN
	1    7400 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2450 7300 1450
Connection ~ 7300 1450
Wire Wire Line
	7300 1450 7350 1450
Wire Wire Line
	6550 1450 6550 2900
Wire Wire Line
	6550 2900 6900 2900
Connection ~ 6550 1450
Wire Wire Line
	6550 1450 6950 1450
$Comp
L Device:R_Small_US R230
U 1 1 619C6DB2
P 6550 3000
F 0 "R230" H 6483 2954 50  0000 R CNN
F 1 "1020k" H 6483 3045 50  0000 R CNN
F 2 "" H 6550 3000 50  0001 C CNN
F 3 "~" H 6550 3000 50  0001 C CNN
	1    6550 3000
	1    0    0    1   
$EndComp
Connection ~ 6550 2900
$Comp
L Device:R_Small_US R231
U 1 1 619C7475
P 6550 3200
F 0 "R231" H 6483 3154 50  0000 R CNN
F 1 "2.87k" H 6483 3245 50  0000 R CNN
F 2 "" H 6550 3200 50  0001 C CNN
F 3 "~" H 6550 3200 50  0001 C CNN
	1    6550 3200
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R232
U 1 1 619D586C
P 6550 3400
F 0 "R232" H 6483 3354 50  0000 R CNN
F 1 "9.76k" H 6483 3445 50  0000 R CNN
F 2 "" H 6550 3400 50  0001 C CNN
F 3 "~" H 6550 3400 50  0001 C CNN
	1    6550 3400
	1    0    0    1   
$EndComp
Wire Wire Line
	6550 3300 6900 3300
Connection ~ 6550 3300
Wire Wire Line
	6900 3100 6550 3100
Connection ~ 6550 3100
$Comp
L Device:R_Small_US R233
U 1 1 61A013AC
P 6550 3600
F 0 "R233" H 6483 3554 50  0000 R CNN
F 1 "54.9k" H 6483 3645 50  0000 R CNN
F 2 "" H 6550 3600 50  0001 C CNN
F 3 "~" H 6550 3600 50  0001 C CNN
	1    6550 3600
	1    0    0    1   
$EndComp
Wire Wire Line
	6550 3700 6900 3700
Wire Wire Line
	6900 3500 6550 3500
Connection ~ 6550 3500
Wire Wire Line
	7900 2900 8500 2900
Wire Wire Line
	8500 2900 8500 1450
Connection ~ 8500 1450
Wire Wire Line
	8500 1450 9400 1450
$Comp
L power:GND #PWR0124
U 1 1 61A40996
P 7400 4000
F 0 "#PWR0124" H 7400 3750 50  0001 C CNN
F 1 "GND" H 7405 3827 50  0000 C CNN
F 2 "" H 7400 4000 50  0001 C CNN
F 3 "" H 7400 4000 50  0001 C CNN
	1    7400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 4000 7400 3950
$Comp
L Device:R_US R235
U 1 1 61A92105
P 7550 1950
F 0 "R235" H 7618 1996 50  0000 L CNN
F 1 "10" H 7618 1905 50  0000 L CNN
F 2 "" V 7590 1940 50  0001 C CNN
F 3 "~" H 7550 1950 50  0001 C CNN
	1    7550 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 1750 7550 1800
Wire Wire Line
	7550 2100 7550 2250
$Comp
L Device:R_US R236
U 1 1 61AB1ABF
P 7900 2250
F 0 "R236" V 7695 2250 50  0000 C CNN
F 1 "1k" V 7786 2250 50  0000 C CNN
F 2 "" V 7940 2240 50  0001 C CNN
F 3 "~" H 7900 2250 50  0001 C CNN
	1    7900 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 2250 7550 2250
Connection ~ 7550 2250
Wire Wire Line
	7550 2250 7550 2450
$Comp
L Device:C C48
U 1 1 61AD1B2D
P 8100 2450
F 0 "C48" H 8215 2496 50  0000 L CNN
F 1 "10nF" H 8215 2405 50  0000 L CNN
F 2 "" H 8138 2300 50  0001 C CNN
F 3 "~" H 8100 2450 50  0001 C CNN
	1    8100 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 61B12E01
P 8100 2650
F 0 "#PWR0129" H 8100 2400 50  0001 C CNN
F 1 "GND" H 8105 2477 50  0000 C CNN
F 2 "" H 8100 2650 50  0001 C CNN
F 3 "" H 8100 2650 50  0001 C CNN
	1    8100 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2650 8100 2600
Wire Wire Line
	8100 2300 8100 2250
Wire Wire Line
	8100 2250 8050 2250
$Comp
L Device:C C47
U 1 1 61B55C06
P 8000 3900
F 0 "C47" H 8115 3946 50  0000 L CNN
F 1 "0.33uF" H 8115 3855 50  0000 L CNN
F 2 "" H 8038 3750 50  0001 C CNN
F 3 "~" H 8000 3900 50  0001 C CNN
	1    8000 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 61B55C1E
P 8000 4100
F 0 "#PWR0128" H 8000 3850 50  0001 C CNN
F 1 "GND" H 8005 3927 50  0000 C CNN
F 2 "" H 8000 4100 50  0001 C CNN
F 3 "" H 8000 4100 50  0001 C CNN
	1    8000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4100 8000 4050
Wire Wire Line
	7900 3700 8000 3700
Wire Wire Line
	8000 3700 8000 3750
Wire Wire Line
	8550 3550 7900 3550
Wire Wire Line
	8550 3550 8550 4900
Wire Wire Line
	8100 6000 7750 6000
Wire Wire Line
	8650 5900 8650 4900
Wire Wire Line
	8650 3050 7900 3050
Wire Wire Line
	7750 5900 8650 5900
Wire Wire Line
	8550 4900 8250 4900
Wire Wire Line
	8250 4900 8250 4950
Connection ~ 8550 4900
Wire Wire Line
	8550 4900 8550 5800
$Comp
L Device:R_US R237
U 1 1 61C0222A
P 8250 5100
F 0 "R237" H 8318 5146 50  0000 L CNN
F 1 "10k" H 8318 5055 50  0000 L CNN
F 2 "" V 8290 5090 50  0001 C CNN
F 3 "~" H 8250 5100 50  0001 C CNN
	1    8250 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 61C264F4
P 8250 5300
F 0 "#PWR0130" H 8250 5050 50  0001 C CNN
F 1 "GND" H 8255 5127 50  0000 C CNN
F 2 "" H 8250 5300 50  0001 C CNN
F 3 "" H 8250 5300 50  0001 C CNN
	1    8250 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 5300 8250 5250
$Comp
L Device:R_US R238
U 1 1 61C38552
P 8850 4650
F 0 "R238" H 8918 4696 50  0000 L CNN
F 1 "10k" H 8918 4605 50  0000 L CNN
F 2 "" V 8890 4640 50  0001 C CNN
F 3 "~" H 8850 4650 50  0001 C CNN
	1    8850 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4450 8850 4500
$Comp
L power:+3.3V #PWR0131
U 1 1 61C5D33A
P 8850 4450
F 0 "#PWR0131" H 8850 4300 50  0001 C CNN
F 1 "+3.3V" H 8865 4623 50  0000 C CNN
F 2 "" H 8850 4450 50  0001 C CNN
F 3 "" H 8850 4450 50  0001 C CNN
	1    8850 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4800 8850 4900
Wire Wire Line
	8850 4900 8650 4900
Wire Bus Line
	8600 5950 8600 6100
Wire Bus Line
	8650 6150 8650 6500
Wire Bus Line
	8700 6550 8700 7300
Wire Bus Line
	14200 2750 14200 4900
Wire Bus Line
	2550 4950 2550 8050
Wire Bus Line
	11200 6950 11200 8100
Connection ~ 8650 4900
Wire Wire Line
	8650 4900 8650 3050
Text Notes 5050 4500 0    50   ~ 0
Vov (@ 15.75V) = 15.75*(54.9k/(1020k+2.87k+9.76k+54.9k)) = 0.795V\nVuvl (@ 12.80V) = 12.80*(2.87k+9.76k+54.9k)/(1020k+2.87k+9.76k+54.9k) = 0.795V
$EndSCHEMATC
