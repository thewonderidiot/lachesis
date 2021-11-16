EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 56 64
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
L Device:L L31
U 1 1 625192D8
P 5300 3800
AR Path="/6183FAE6/62519032/625192D8" Ref="L31"  Part="1" 
AR Path="/6183FAE6/62531DCA/625192D8" Ref="L32"  Part="1" 
AR Path="/6183FAE6/6254620B/625192D8" Ref="L33"  Part="1" 
AR Path="/6183FAE6/62546210/625192D8" Ref="L?"  Part="1" 
AR Path="/6183FAE6/62630A14/625192D8" Ref="L34"  Part="1" 
AR Path="/6183FAE6/62637D4C/625192D8" Ref="L35"  Part="1" 
AR Path="/6183FAE6/626621B6/625192D8" Ref="L36"  Part="1" 
AR Path="/6183FAE6/626621BA/625192D8" Ref="L37"  Part="1" 
AR Path="/6183FAE6/626621BF/625192D8" Ref="L38"  Part="1" 
AR Path="/64D2DF1E/62A035A1/625192D8" Ref="L2"  Part="1" 
AR Path="/6183FAE6/61E0F0ED/625192D8" Ref="L?"  Part="1" 
AR Path="/61EC7443/61E13129/625192D8" Ref="L1"  Part="1" 
F 0 "L38" V 5490 3800 50  0000 C CNN
F 1 "8.2uH" V 5399 3800 50  0000 C CNN
F 2 "Inductor_SMD:L_1812_4532Metric" H 5300 3800 50  0001 C CNN
F 3 "~" H 5300 3800 50  0001 C CNN
	1    5300 3800
	0    -1   -1   0   
$EndComp
$Comp
L lachesis:+14V #PWR0106
U 1 1 62519A3E
P 4950 3750
AR Path="/6183FAE6/62519032/62519A3E" Ref="#PWR0106"  Part="1" 
AR Path="/6183FAE6/62531DCA/62519A3E" Ref="#PWR0108"  Part="1" 
AR Path="/6183FAE6/6254620B/62519A3E" Ref="#PWR0110"  Part="1" 
AR Path="/6183FAE6/62546210/62519A3E" Ref="#PWR?"  Part="1" 
AR Path="/6183FAE6/62630A14/62519A3E" Ref="#PWR0112"  Part="1" 
AR Path="/6183FAE6/62637D4C/62519A3E" Ref="#PWR0114"  Part="1" 
AR Path="/6183FAE6/626621B6/62519A3E" Ref="#PWR0116"  Part="1" 
AR Path="/6183FAE6/626621BA/62519A3E" Ref="#PWR0118"  Part="1" 
AR Path="/6183FAE6/626621BF/62519A3E" Ref="#PWR0120"  Part="1" 
AR Path="/64D2DF1E/62A035A1/62519A3E" Ref="#PWR056"  Part="1" 
AR Path="/6183FAE6/61E0F0ED/62519A3E" Ref="#PWR?"  Part="1" 
AR Path="/61EC7443/61E13129/62519A3E" Ref="#PWR05"  Part="1" 
F 0 "#PWR0120" H 4950 3600 50  0001 C CNN
F 1 "+14V" H 4965 3923 50  0000 C CNN
F 2 "" H 4950 3750 50  0001 C CNN
F 3 "" H 4950 3750 50  0001 C CNN
	1    4950 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3750 4950 3800
Wire Wire Line
	4950 3800 5150 3800
Wire Wire Line
	5450 3800 5550 3800
Wire Wire Line
	5550 3800 5550 3900
Wire Wire Line
	5550 4200 5550 4250
$Comp
L power:GND #PWR0107
U 1 1 6251C31D
P 5550 4250
AR Path="/6183FAE6/62519032/6251C31D" Ref="#PWR0107"  Part="1" 
AR Path="/6183FAE6/62531DCA/6251C31D" Ref="#PWR0109"  Part="1" 
AR Path="/6183FAE6/6254620B/6251C31D" Ref="#PWR0111"  Part="1" 
AR Path="/6183FAE6/62546210/6251C31D" Ref="#PWR?"  Part="1" 
AR Path="/6183FAE6/62630A14/6251C31D" Ref="#PWR0113"  Part="1" 
AR Path="/6183FAE6/62637D4C/6251C31D" Ref="#PWR0115"  Part="1" 
AR Path="/6183FAE6/626621B6/6251C31D" Ref="#PWR0117"  Part="1" 
AR Path="/6183FAE6/626621BA/6251C31D" Ref="#PWR0119"  Part="1" 
AR Path="/6183FAE6/626621BF/6251C31D" Ref="#PWR0121"  Part="1" 
AR Path="/64D2DF1E/62A035A1/6251C31D" Ref="#PWR057"  Part="1" 
AR Path="/6183FAE6/61E0F0ED/6251C31D" Ref="#PWR?"  Part="1" 
AR Path="/61EC7443/61E13129/6251C31D" Ref="#PWR06"  Part="1" 
F 0 "#PWR0121" H 5550 4000 50  0001 C CNN
F 1 "GND" H 5555 4077 50  0000 C CNN
F 2 "" H 5550 4250 50  0001 C CNN
F 3 "" H 5550 4250 50  0001 C CNN
	1    5550 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3800 5900 3800
Connection ~ 5550 3800
Text HLabel 5900 3800 2    50   Output ~ 0
14V
$Comp
L Device:CP1 C3
U 1 1 628400BF
P 5550 4050
AR Path="/61EC7443/61E13129/628400BF" Ref="C3"  Part="1" 
AR Path="/6183FAE6/62637D4C/628400BF" Ref="C41"  Part="1" 
AR Path="/64D2DF1E/62A035A1/628400BF" Ref="C36"  Part="1" 
AR Path="/6183FAE6/62519032/628400BF" Ref="C37"  Part="1" 
AR Path="/6183FAE6/62531DCA/628400BF" Ref="C38"  Part="1" 
AR Path="/6183FAE6/6254620B/628400BF" Ref="C39"  Part="1" 
AR Path="/6183FAE6/62630A14/628400BF" Ref="C40"  Part="1" 
AR Path="/6183FAE6/626621B6/628400BF" Ref="C42"  Part="1" 
AR Path="/6183FAE6/626621BA/628400BF" Ref="C43"  Part="1" 
AR Path="/6183FAE6/626621BF/628400BF" Ref="C44"  Part="1" 
F 0 "C44" H 5665 4096 50  0000 L CNN
F 1 "6.8uF" H 5665 4005 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-31_Kemet-D" H 5550 4050 50  0001 C CNN
F 3 "~" H 5550 4050 50  0001 C CNN
	1    5550 4050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
