EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "High Voltage Panel"
Date "2020-01-27"
Rev "1"
Comp "DangleBrew"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_WallPlug_Earth P2
U 1 1 5E17DE2D
P 1000 6250
F 0 "P2" H 900 6500 50  0000 C CNN
F 1 "Conn_WallPlug_Earth" H 1000 5750 50  0000 C CNN
F 2 "" H 1400 6250 50  0001 C CNN
F 3 "~" H 1400 6250 50  0001 C CNN
	1    1000 6250
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_AC M1
U 1 1 5E301796
P 4050 4700
F 0 "M1" V 3850 4450 50  0000 C CNN
F 1 "Pump" V 3850 4650 50  0000 C CNN
F 2 "" H 4050 4610 50  0001 C CNN
F 3 "~" H 4050 4610 50  0001 C CNN
	1    4050 4700
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_SPST_Lamp SW1
U 1 1 5E30498B
P 3150 2200
F 0 "SW1" H 3150 2530 50  0000 C CNN
F 1 "SW_SPST_Lamp" H 3150 2439 50  0000 C CNN
F 2 "" H 3150 2500 50  0001 C CNN
F 3 "~" H 3150 2500 50  0001 C CNN
	1    3150 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:Lamp LA4
U 1 1 5E305C74
P 2850 6550
F 0 "LA4" H 2978 6596 50  0000 L CNN
F 1 "LampRed" H 2978 6505 50  0000 L CNN
F 2 "" V 2850 6650 50  0001 C CNN
F 3 "~" V 2850 6650 50  0001 C CNN
	1    2850 6550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J4
U 1 1 5E30EF17
P 3550 6950
F 0 "J4" H 3400 6750 50  0000 L CNN
F 1 "Panel" H 3400 6650 50  0000 L CNN
F 2 "" H 3550 6950 50  0001 C CNN
F 3 "~" H 3550 6950 50  0001 C CNN
	1    3550 6950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J12
U 1 1 5E30F7C3
P 3800 6950
F 0 "J12" H 3850 7250 50  0000 C CNN
F 1 "PowerCon" H 3950 7150 50  0000 C CNN
F 2 "" H 3800 6950 50  0001 C CNN
F 3 "~" H 3800 6950 50  0001 C CNN
	1    3800 6950
	1    0    0    -1  
$EndComp
$Comp
L Relay_SolidState:S102S02 U2
U 1 1 5E1800A8
P 2500 5800
F 0 "U2" H 2500 6125 50  0000 C CNN
F 1 "S102S02" H 2500 6034 50  0000 C CNN
F 2 "Package_SIP:SIP4_Sharp-SSR_P7.62mm_Straight" H 2300 5600 50  0001 L CIN
F 3 "http://www.sharp-world.com/products/device/lineup/data/pdf/datasheet/s102s02_e.pdf" H 2465 5800 50  0001 L CNN
	1    2500 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 6350 1800 6350
Wire Wire Line
	1800 6350 1800 6950
Wire Wire Line
	2850 6150 3350 6150
Wire Wire Line
	3350 6150 3350 6850
Connection ~ 2850 6150
Wire Wire Line
	2850 6150 2850 6350
Wire Wire Line
	2850 6950 2850 6750
Wire Wire Line
	2050 6350 2050 6150
$Comp
L Device:Lamp LA3
U 1 1 5E3062A7
P 2050 6550
F 0 "LA3" H 2178 6596 50  0000 L CNN
F 1 "LampOrange" H 2178 6505 50  0000 L CNN
F 2 "" V 2050 6650 50  0001 C CNN
F 3 "~" V 2050 6650 50  0001 C CNN
	1    2050 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 6950 2050 6950
Wire Wire Line
	2300 6150 2300 6100
Wire Wire Line
	2050 6750 2050 6950
Connection ~ 2050 6950
Wire Wire Line
	2850 6950 3350 6950
Wire Wire Line
	2050 6150 2300 6150
Wire Wire Line
	2050 6950 2850 6950
Connection ~ 2850 6950
Wire Wire Line
	1650 7050 3350 7050
$Comp
L Connector:Conn_WallPlug_Earth P1
U 1 1 5E3A72DD
P 1000 1850
F 0 "P1" H 900 2100 50  0000 C CNN
F 1 "Conn_WallPlug_Earth" H 1000 1350 50  0000 C CNN
F 2 "" H 1400 1850 50  0001 C CNN
F 3 "~" H 1400 1850 50  0001 C CNN
	1    1000 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:Lamp LA2
U 1 1 5E3A72E3
P 6250 2150
F 0 "LA2" H 6378 2196 50  0000 L CNN
F 1 "LampRed" H 6378 2105 50  0000 L CNN
F 2 "" V 6250 2250 50  0001 C CNN
F 3 "~" V 6250 2250 50  0001 C CNN
	1    6250 2150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J3
U 1 1 5E3A72E9
P 6950 2550
F 0 "J3" H 6800 2350 50  0000 L CNN
F 1 "Panel" H 6800 2250 50  0000 L CNN
F 2 "" H 6950 2550 50  0001 C CNN
F 3 "~" H 6950 2550 50  0001 C CNN
	1    6950 2550
	1    0    0    -1  
$EndComp
$Comp
L Relay_SolidState:S102S02 U1
U 1 1 5E3A72F5
P 5900 1400
F 0 "U1" H 5900 1725 50  0000 C CNN
F 1 "S102S02" H 5900 1634 50  0000 C CNN
F 2 "Package_SIP:SIP4_Sharp-SSR_P7.62mm_Straight" H 5700 1200 50  0001 L CIN
F 3 "http://www.sharp-world.com/products/device/lineup/data/pdf/datasheet/s102s02_e.pdf" H 5865 1400 50  0001 L CNN
	1    5900 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 1950 1800 1950
Wire Wire Line
	1800 1950 1800 2550
Wire Wire Line
	6250 1750 6750 1750
Wire Wire Line
	6750 1750 6750 2450
Connection ~ 6250 1750
Wire Wire Line
	6250 1750 6250 1950
Wire Wire Line
	6250 2550 6250 2350
Wire Wire Line
	2050 1950 2050 1750
$Comp
L Device:Lamp LA1
U 1 1 5E3A7305
P 2050 2150
F 0 "LA1" H 2178 2196 50  0000 L CNN
F 1 "LampOrange" H 2178 2105 50  0000 L CNN
F 2 "" V 2050 2250 50  0001 C CNN
F 3 "~" V 2050 2250 50  0001 C CNN
	1    2050 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2550 2050 2550
Wire Wire Line
	5700 1750 5700 1700
Wire Wire Line
	6100 1750 6250 1750
Wire Wire Line
	2050 2350 2050 2550
Wire Wire Line
	6250 2550 6750 2550
Connection ~ 6250 2550
Wire Wire Line
	2050 1750 2850 1750
Connection ~ 2050 2550
Wire Wire Line
	2050 2550 2850 2550
Wire Wire Line
	1650 2650 3600 2650
Wire Wire Line
	2850 1750 2850 2100
Wire Wire Line
	2850 2100 2950 2100
Wire Wire Line
	3350 2100 3400 2100
Wire Wire Line
	3400 2100 3400 2200
Wire Wire Line
	3400 2200 3350 2200
Wire Wire Line
	2950 2200 2850 2200
Wire Wire Line
	2850 2200 2850 2550
Connection ~ 2850 2550
$Comp
L Connector:Conn_01x03_Female J1
U 1 1 5E3F55C3
P 3900 2200
F 0 "J1" H 3750 2000 50  0000 L CNN
F 1 "Panel" H 3750 1900 50  0000 L CNN
F 2 "" H 3900 2200 50  0001 C CNN
F 3 "~" H 3900 2200 50  0001 C CNN
	1    3900 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2100 3700 2100
Connection ~ 3400 2100
Wire Wire Line
	2850 2550 3550 2550
Wire Wire Line
	3700 2200 3550 2200
Wire Wire Line
	3550 2200 3550 2550
Wire Wire Line
	3700 2300 3600 2300
Wire Wire Line
	3600 2300 3600 2650
Wire Wire Line
	4200 4400 4200 4500
Wire Wire Line
	4200 4500 4350 4500
Wire Wire Line
	4350 4500 4350 4700
Wire Wire Line
	3850 4700 3850 4500
Wire Wire Line
	3850 4500 4000 4500
Wire Wire Line
	4000 4500 4000 4400
$Comp
L Connector:Conn_01x03_Male J6
U 1 1 5E3F5A5A
P 4000 2950
F 0 "J6" H 4050 3250 50  0000 C CNN
F 1 "PowerCon" H 4050 3150 50  0000 C CNN
F 2 "" H 4000 2950 50  0001 C CNN
F 3 "~" H 4000 2950 50  0001 C CNN
	1    4000 2950
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_SPST_Lamp SW2
U 1 1 5E463D2C
P 4750 2200
F 0 "SW2" H 4750 2530 50  0000 C CNN
F 1 "SW_SPST_Lamp" H 4750 2439 50  0000 C CNN
F 2 "" H 4750 2500 50  0001 C CNN
F 3 "~" H 4750 2500 50  0001 C CNN
	1    4750 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1750 4450 2100
Wire Wire Line
	4450 2100 4550 2100
Wire Wire Line
	4950 2100 5000 2100
Wire Wire Line
	5000 2100 5000 2200
Wire Wire Line
	5000 2200 4950 2200
Wire Wire Line
	4550 2200 4450 2200
Wire Wire Line
	4450 2200 4450 2550
$Comp
L Connector:Conn_01x03_Female J2
U 1 1 5E463D39
P 5500 2200
F 0 "J2" H 5350 2000 50  0000 L CNN
F 1 "Panel" H 5350 1900 50  0000 L CNN
F 2 "" H 5500 2200 50  0001 C CNN
F 3 "~" H 5500 2200 50  0001 C CNN
	1    5500 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2100 5300 2100
Connection ~ 5000 2100
Wire Wire Line
	5300 2200 5150 2200
Wire Wire Line
	5150 2200 5150 2550
Wire Wire Line
	5300 2300 5200 2300
Wire Wire Line
	5200 2300 5200 2650
Connection ~ 2850 1750
Connection ~ 3550 2550
Connection ~ 3600 2650
Connection ~ 4450 1750
Wire Wire Line
	4450 1750 5700 1750
Connection ~ 4450 2550
Connection ~ 5150 2550
Wire Wire Line
	5150 2550 6250 2550
Connection ~ 5200 2650
Wire Wire Line
	5200 2650 6750 2650
Wire Wire Line
	2850 1750 4450 1750
Wire Wire Line
	3550 2550 4450 2550
Wire Wire Line
	3600 2650 5200 2650
Wire Wire Line
	4450 2550 5150 2550
$Comp
L Connector:Conn_WallSocket_Earth J13
U 1 1 5E4C0547
P 4450 6950
F 0 "J13" H 4550 7300 50  0000 L CNN
F 1 "Conn_WallSocket_Earth" H 4100 7350 50  0001 L CNN
F 2 "" H 4150 7050 50  0001 C CNN
F 3 "~" H 4150 7050 50  0001 C CNN
	1    4450 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6850 4200 6850
Wire Wire Line
	4200 6850 4200 6750
Wire Wire Line
	4200 6750 4250 6750
Wire Wire Line
	4000 7050 4200 7050
Wire Wire Line
	4200 7050 4200 7150
Wire Wire Line
	4200 7150 4250 7150
Wire Wire Line
	4000 6950 4250 6950
Wire Notes Line
	3700 6450 4750 6450
Wire Notes Line
	4750 6450 4750 7400
Wire Notes Line
	4750 7400 3700 7400
Wire Notes Line
	3700 7400 3700 6450
Text Notes 3700 6400 0    50   ~ 0
PowerCon Cable
$Comp
L Connector:Conn_WallSocket_Earth J7
U 1 1 5E5437D9
P 4000 3550
F 0 "J7" H 4100 3900 50  0000 L CNN
F 1 "Conn_WallSocket_Earth" H 3650 3950 50  0001 L CNN
F 2 "" H 3700 3650 50  0001 C CNN
F 3 "~" H 3700 3650 50  0001 C CNN
	1    4000 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 3150 4000 3350
Wire Wire Line
	4100 3150 4100 3300
Wire Wire Line
	4100 3300 4200 3300
Wire Wire Line
	4200 3300 4200 3350
Wire Wire Line
	3900 3300 3800 3300
Wire Wire Line
	3800 3300 3800 3350
Wire Wire Line
	3900 3150 3900 3300
$Comp
L Connector:Conn_WallPlug_Earth P3
U 1 1 5E5C06A9
P 4100 4100
F 0 "P3" H 4000 4350 50  0000 C CNN
F 1 "Conn_WallPlug_Earth" H 4167 4334 50  0001 C CNN
F 2 "" H 4500 4100 50  0001 C CNN
F 3 "~" H 4500 4100 50  0001 C CNN
	1    4100 4100
	0    1    1    0   
$EndComp
NoConn ~ 3800 4400
Text Notes 3550 3850 1    50   ~ 0
PowerCon Cable
$Comp
L Motor:Motor_AC M?
U 1 1 5E626E93
P 5750 4700
F 0 "M?" V 5550 4450 50  0000 C CNN
F 1 "Pump" V 5550 4650 50  0000 C CNN
F 2 "" H 5750 4610 50  0001 C CNN
F 3 "~" H 5750 4610 50  0001 C CNN
	1    5750 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 4400 5900 4500
Wire Wire Line
	5900 4500 6050 4500
Wire Wire Line
	6050 4500 6050 4700
Wire Wire Line
	5550 4700 5550 4500
Wire Wire Line
	5550 4500 5700 4500
Wire Wire Line
	5700 4500 5700 4400
$Comp
L Connector:Conn_01x03_Male J8
U 1 1 5E626E9F
P 5700 2950
F 0 "J8" H 5750 3250 50  0000 C CNN
F 1 "PowerCon" H 5750 3150 50  0000 C CNN
F 2 "" H 5700 2950 50  0001 C CNN
F 3 "~" H 5700 2950 50  0001 C CNN
	1    5700 2950
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_WallSocket_Earth J9
U 1 1 5E626EA5
P 5700 3550
F 0 "J9" H 5800 3900 50  0000 L CNN
F 1 "Conn_WallSocket_Earth" H 5350 3950 50  0001 L CNN
F 2 "" H 5400 3650 50  0001 C CNN
F 3 "~" H 5400 3650 50  0001 C CNN
	1    5700 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 3150 5700 3350
Wire Wire Line
	5800 3150 5800 3300
Wire Wire Line
	5800 3300 5900 3300
Wire Wire Line
	5900 3300 5900 3350
Wire Wire Line
	5600 3300 5500 3300
Wire Wire Line
	5500 3300 5500 3350
Wire Wire Line
	5600 3150 5600 3300
$Comp
L Connector:Conn_WallPlug_Earth P4
U 1 1 5E626EB2
P 5800 4100
F 0 "P4" H 5700 4350 50  0000 C CNN
F 1 "Conn_WallPlug_Earth" H 5867 4334 50  0001 C CNN
F 2 "" H 6200 4100 50  0001 C CNN
F 3 "~" H 6200 4100 50  0001 C CNN
	1    5800 4100
	0    1    1    0   
$EndComp
NoConn ~ 5500 4400
Text Notes 5250 3850 1    50   ~ 0
PowerCon Cable
Wire Notes Line
	3600 2800 4450 2800
Wire Notes Line
	4450 2800 4450 3850
Wire Notes Line
	4450 3850 3600 3850
Wire Notes Line
	3600 3850 3600 2800
Wire Notes Line
	6150 2800 6150 3850
Wire Notes Line
	6150 3850 5300 3850
Wire Notes Line
	5300 3850 5300 2800
Wire Notes Line
	5300 2800 6150 2800
$Comp
L Connector:Conn_01x03_Male J10
U 1 1 5E657BC3
P 7150 2550
F 0 "J10" H 7200 2850 50  0000 C CNN
F 1 "PowerCon" H 7300 2750 50  0000 C CNN
F 2 "" H 7150 2550 50  0001 C CNN
F 3 "~" H 7150 2550 50  0001 C CNN
	1    7150 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:Heater R1
U 1 1 5E657BC9
P 8950 2450
F 0 "R1" H 9020 2496 50  0000 L CNN
F 1 "Heater" H 9020 2405 50  0000 L CNN
F 2 "" V 8880 2450 50  0001 C CNN
F 3 "~" H 8950 2450 50  0001 C CNN
	1    8950 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_WallSocket_Earth J11
U 1 1 5E657BCF
P 7800 2550
F 0 "J11" H 7900 2900 50  0000 L CNN
F 1 "Conn_WallSocket_Earth" H 7450 2950 50  0001 L CNN
F 2 "" H 7500 2650 50  0001 C CNN
F 3 "~" H 7500 2650 50  0001 C CNN
	1    7800 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2450 7550 2450
Wire Wire Line
	7550 2450 7550 2350
Wire Wire Line
	7550 2350 7600 2350
Wire Wire Line
	7350 2650 7550 2650
Wire Wire Line
	7550 2650 7550 2750
Wire Wire Line
	7550 2750 7600 2750
Wire Wire Line
	7350 2550 7600 2550
$Comp
L Connector:Conn_WallPlug_Earth P5
U 1 1 5E657BDC
P 8400 2450
F 0 "P5" H 8300 2700 50  0000 C CNN
F 1 "Conn_WallPlug_Earth" H 8467 2684 50  0001 C CNN
F 2 "" H 8800 2450 50  0001 C CNN
F 3 "~" H 8800 2450 50  0001 C CNN
	1    8400 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2550 8800 2550
Wire Wire Line
	8800 2550 8800 2600
Wire Wire Line
	8800 2600 8950 2600
Wire Wire Line
	8950 2300 8800 2300
Wire Wire Line
	8800 2300 8800 2350
Wire Wire Line
	8800 2350 8700 2350
Wire Notes Line
	7050 2050 8100 2050
Wire Notes Line
	8100 2050 8100 3000
Wire Notes Line
	8100 3000 7050 3000
Wire Notes Line
	7050 3000 7050 2050
Text Notes 7050 2000 0    50   ~ 0
PowerCon Cable
Wire Notes Line
	3600 3900 4450 3900
Wire Notes Line
	4450 3900 4450 5000
Wire Notes Line
	4450 5000 3600 5000
Wire Notes Line
	3600 5000 3600 3900
Wire Notes Line
	5300 3900 6150 3900
Wire Notes Line
	6150 3900 6150 5000
Wire Notes Line
	6150 5000 5300 5000
Wire Notes Line
	5300 5000 5300 3900
Text Notes 3550 5000 1    50   ~ 0
Pump 1
Text Notes 5250 5000 1    50   ~ 0
Pump 2
Wire Notes Line
	8150 2050 9350 2050
Wire Notes Line
	9350 2050 9350 3000
Wire Notes Line
	9350 3000 8150 3000
Wire Notes Line
	8150 3000 8150 2050
Text Notes 8150 2000 0    50   ~ 0
Heater 1 (HEX)
$Comp
L Device:Heater R2
U 1 1 5E70D9BC
P 5600 6850
F 0 "R2" H 5670 6896 50  0000 L CNN
F 1 "Heater" H 5670 6805 50  0000 L CNN
F 2 "" V 5530 6850 50  0001 C CNN
F 3 "~" H 5600 6850 50  0001 C CNN
	1    5600 6850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_WallPlug_Earth P6
U 1 1 5E70D9C2
P 5050 6850
F 0 "P6" H 4950 7100 50  0000 C CNN
F 1 "Conn_WallPlug_Earth" H 5117 7084 50  0001 C CNN
F 2 "" H 5450 6850 50  0001 C CNN
F 3 "~" H 5450 6850 50  0001 C CNN
	1    5050 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 6950 5450 6950
Wire Wire Line
	5450 6950 5450 7000
Wire Wire Line
	5450 7000 5600 7000
Wire Wire Line
	5600 6700 5450 6700
Wire Wire Line
	5450 6700 5450 6750
Wire Wire Line
	5450 6750 5350 6750
Wire Notes Line
	4800 6450 6000 6450
Wire Notes Line
	6000 6450 6000 7400
Wire Notes Line
	6000 7400 4800 7400
Wire Notes Line
	4800 7400 4800 6450
Text Notes 4800 6400 0    50   ~ 0
Heater 2 (HLT)
$Comp
L Connector:Conn_01x03_Female J5
U 1 1 5E786689
P 10050 1200
F 0 "J5" H 9900 1450 50  0000 L CNN
F 1 "Conn_01x03_Female" H 10078 1135 50  0001 L CNN
F 2 "" H 10050 1200 50  0001 C CNN
F 3 "~" H 10050 1200 50  0001 C CNN
	1    10050 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1100 5800 950 
Wire Wire Line
	5800 950  9650 950 
Wire Wire Line
	9650 950  9650 1200
Wire Wire Line
	2600 5500 2600 5400
Wire Wire Line
	2400 5500 2400 5300
Wire Wire Line
	6000 1100 9850 1100
Wire Wire Line
	9650 1200 9850 1200
Wire Wire Line
	9650 5300 9650 1200
Wire Wire Line
	2400 5300 9650 5300
Connection ~ 9650 1200
Wire Wire Line
	9750 5400 9750 1300
Wire Wire Line
	9750 1300 9850 1300
Wire Wire Line
	2600 5400 9750 5400
$Comp
L Switch:SW_SPST SW3
U 1 1 5E302B73
P 5900 1850
F 0 "SW3" H 5900 1750 50  0000 C CNN
F 1 "SW_SPST" H 5900 1750 50  0001 C CNN
F 2 "" H 5900 1850 50  0001 C CNN
F 3 "~" H 5900 1850 50  0001 C CNN
	1    5900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1700 6100 1750
Wire Wire Line
	6100 1850 6100 1750
Connection ~ 6100 1750
Wire Wire Line
	5700 1850 5700 1750
Connection ~ 5700 1750
Wire Wire Line
	5700 1700 5800 1700
Wire Wire Line
	6100 1700 6000 1700
$Comp
L Switch:SW_SPST SW4
U 1 1 5E370706
P 2500 6250
F 0 "SW4" H 2500 6150 50  0000 C CNN
F 1 "SW_SPST" H 2500 6150 50  0001 C CNN
F 2 "" H 2500 6250 50  0001 C CNN
F 3 "~" H 2500 6250 50  0001 C CNN
	1    2500 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 6100 2400 6100
Wire Wire Line
	2300 6150 2300 6250
Connection ~ 2300 6150
Wire Wire Line
	2700 6250 2700 6150
Wire Wire Line
	2700 6150 2850 6150
Wire Wire Line
	2600 6100 2700 6100
Wire Wire Line
	2700 6100 2700 6150
Connection ~ 2700 6150
NoConn ~ 5350 7150
NoConn ~ 8700 2750
$Comp
L Device:CircuitBreaker_1P CB1
U 1 1 5E3035B5
P 1700 1750
F 0 "CB1" V 1435 1750 50  0000 C CNN
F 1 "CircuitBreaker_1P" V 1526 1750 50  0000 C CNN
F 2 "" H 1700 1750 50  0001 C CNN
F 3 "~" H 1700 1750 50  0001 C CNN
	1    1700 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 2150 1650 2150
Wire Wire Line
	1650 2150 1650 2650
Wire Wire Line
	1300 1750 1400 1750
Wire Wire Line
	2000 1750 2050 1750
Connection ~ 2050 1750
$Comp
L Device:CircuitBreaker_1P CB2
U 1 1 5E36F122
P 1700 6150
F 0 "CB2" V 1435 6150 50  0000 C CNN
F 1 "CircuitBreaker_1P" V 1526 6150 50  0000 C CNN
F 2 "" H 1700 6150 50  0001 C CNN
F 3 "~" H 1700 6150 50  0001 C CNN
	1    1700 6150
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 6150 1400 6150
Wire Wire Line
	2000 6150 2050 6150
Connection ~ 2050 6150
Wire Wire Line
	1300 6550 1650 6550
Wire Wire Line
	1650 6550 1650 7050
Text Notes 550  1900 0    50   ~ 0
15 A
Text Notes 550  6300 0    50   ~ 0
20 A
Text Notes 10090 1140 0    50   ~ 0
HEX
Text Notes 10090 1335 0    50   ~ 0
HLT
$EndSCHEMATC