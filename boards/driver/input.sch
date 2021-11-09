EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 14 68
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
U 1 1 62A099B4
P 5350 3350
AR Path="/6183FAE6/6232C4EF/62A099B4" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623C263E/62A099B4" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623D514A/62A099B4" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623D5718/62A099B4" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623DF4E1/62A099B4" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623E7DB1/62A099B4" Ref="R?"  Part="1" 
AR Path="/6183FAE6/623E7DC0/62A099B4" Ref="R?"  Part="1" 
AR Path="/64D2DF1E/62A081E6/62A099B4" Ref="R73"  Part="1" 
AR Path="/64D2DF1E/61899537/62A099B4" Ref="R77"  Part="1" 
AR Path="/64D2DF1E/6189F17F/62A099B4" Ref="R81"  Part="1" 
AR Path="/64D2DF1E/618A1433/62A099B4" Ref="R85"  Part="1" 
AR Path="/64D2DF1E/618A1442/62A099B4" Ref="R89"  Part="1" 
AR Path="/64D2DF1E/618A404F/62A099B4" Ref="R93"  Part="1" 
AR Path="/64D2DF1E/618A405E/62A099B4" Ref="R97"  Part="1" 
AR Path="/64D2DF1E/618A406D/62A099B4" Ref="R101"  Part="1" 
AR Path="/64D2DF1E/618A407C/62A099B4" Ref="R105"  Part="1" 
AR Path="/64D2DF1E/618ABD3C/62A099B4" Ref="R109"  Part="1" 
AR Path="/64D2DF1E/618ABD4B/62A099B4" Ref="R113"  Part="1" 
AR Path="/64D2DF1E/618ABD5A/62A099B4" Ref="R117"  Part="1" 
AR Path="/64D2DF1E/618ABD69/62A099B4" Ref="R121"  Part="1" 
F 0 "R89" V 5145 3350 50  0000 C CNN
F 1 "500" V 5236 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5390 3340 50  0001 C CNN
F 3 "~" H 5350 3350 50  0001 C CNN
	1    5350 3350
	0    1    1    0   
$EndComp
Text HLabel 5100 3350 0    50   Input ~ 0
IN
$Comp
L Device:Q_NPN_BEC Q?
U 1 1 62A099BB
P 5750 3350
AR Path="/6183FAE6/6232C4EF/62A099BB" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623C263E/62A099BB" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623D514A/62A099BB" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623D5718/62A099BB" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623DF4E1/62A099BB" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623E7DB1/62A099BB" Ref="Q?"  Part="1" 
AR Path="/6183FAE6/623E7DC0/62A099BB" Ref="Q?"  Part="1" 
AR Path="/64D2DF1E/62A081E6/62A099BB" Ref="Q3"  Part="1" 
AR Path="/64D2DF1E/61899537/62A099BB" Ref="Q5"  Part="1" 
AR Path="/64D2DF1E/6189F17F/62A099BB" Ref="Q7"  Part="1" 
AR Path="/64D2DF1E/618A1433/62A099BB" Ref="Q9"  Part="1" 
AR Path="/64D2DF1E/618A1442/62A099BB" Ref="Q11"  Part="1" 
AR Path="/64D2DF1E/618A404F/62A099BB" Ref="Q13"  Part="1" 
AR Path="/64D2DF1E/618A405E/62A099BB" Ref="Q15"  Part="1" 
AR Path="/64D2DF1E/618A406D/62A099BB" Ref="Q17"  Part="1" 
AR Path="/64D2DF1E/618A407C/62A099BB" Ref="Q19"  Part="1" 
AR Path="/64D2DF1E/618ABD3C/62A099BB" Ref="Q21"  Part="1" 
AR Path="/64D2DF1E/618ABD4B/62A099BB" Ref="Q23"  Part="1" 
AR Path="/64D2DF1E/618ABD5A/62A099BB" Ref="Q25"  Part="1" 
AR Path="/64D2DF1E/618ABD69/62A099BB" Ref="Q27"  Part="1" 
F 0 "Q11" H 5941 3396 50  0000 L CNN
F 1 "MMBT2222" H 5941 3305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5950 3450 50  0001 C CNN
F 3 "~" H 5750 3350 50  0001 C CNN
	1    5750 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3350 5550 3350
Wire Wire Line
	5100 3350 5200 3350
Wire Wire Line
	5850 3150 5850 3000
Wire Wire Line
	5850 3000 6150 3000
Text HLabel 6150 3000 2    50   Output ~ 0
OUT
$Comp
L Device:D_ALT D5
U 1 1 62A09ED6
P 5850 3750
AR Path="/64D2DF1E/62A081E6/62A09ED6" Ref="D5"  Part="1" 
AR Path="/64D2DF1E/61899537/62A09ED6" Ref="D7"  Part="1" 
AR Path="/64D2DF1E/6189F17F/62A09ED6" Ref="D9"  Part="1" 
AR Path="/64D2DF1E/618A1433/62A09ED6" Ref="D11"  Part="1" 
AR Path="/64D2DF1E/618A1442/62A09ED6" Ref="D13"  Part="1" 
AR Path="/64D2DF1E/618A404F/62A09ED6" Ref="D15"  Part="1" 
AR Path="/64D2DF1E/618A405E/62A09ED6" Ref="D17"  Part="1" 
AR Path="/64D2DF1E/618A406D/62A09ED6" Ref="D19"  Part="1" 
AR Path="/64D2DF1E/618A407C/62A09ED6" Ref="D21"  Part="1" 
AR Path="/64D2DF1E/618ABD3C/62A09ED6" Ref="D23"  Part="1" 
AR Path="/64D2DF1E/618ABD4B/62A09ED6" Ref="D25"  Part="1" 
AR Path="/64D2DF1E/618ABD5A/62A09ED6" Ref="D27"  Part="1" 
AR Path="/64D2DF1E/618ABD69/62A09ED6" Ref="D29"  Part="1" 
F 0 "D13" V 5896 3670 50  0000 R CNN
F 1 "1N4148" V 5805 3670 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" H 5850 3750 50  0001 C CNN
F 3 "~" H 5850 3750 50  0001 C CNN
	1    5850 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5850 3550 5850 3600
Wire Wire Line
	5850 3900 5850 3950
$Comp
L power:GND #PWR037
U 1 1 62A0A585
P 5850 3950
AR Path="/64D2DF1E/62A081E6/62A0A585" Ref="#PWR037"  Part="1" 
AR Path="/64D2DF1E/61899537/62A0A585" Ref="#PWR039"  Part="1" 
AR Path="/64D2DF1E/6189F17F/62A0A585" Ref="#PWR041"  Part="1" 
AR Path="/64D2DF1E/618A1433/62A0A585" Ref="#PWR043"  Part="1" 
AR Path="/64D2DF1E/618A1442/62A0A585" Ref="#PWR045"  Part="1" 
AR Path="/64D2DF1E/618A404F/62A0A585" Ref="#PWR047"  Part="1" 
AR Path="/64D2DF1E/618A405E/62A0A585" Ref="#PWR049"  Part="1" 
AR Path="/64D2DF1E/618A406D/62A0A585" Ref="#PWR051"  Part="1" 
AR Path="/64D2DF1E/618A407C/62A0A585" Ref="#PWR053"  Part="1" 
AR Path="/64D2DF1E/618ABD3C/62A0A585" Ref="#PWR055"  Part="1" 
AR Path="/64D2DF1E/618ABD4B/62A0A585" Ref="#PWR057"  Part="1" 
AR Path="/64D2DF1E/618ABD5A/62A0A585" Ref="#PWR059"  Part="1" 
AR Path="/64D2DF1E/618ABD69/62A0A585" Ref="#PWR061"  Part="1" 
F 0 "#PWR061" H 5850 3700 50  0001 C CNN
F 1 "GND" H 5855 3777 50  0000 C CNN
F 2 "" H 5850 3950 50  0001 C CNN
F 3 "" H 5850 3950 50  0001 C CNN
	1    5850 3950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
