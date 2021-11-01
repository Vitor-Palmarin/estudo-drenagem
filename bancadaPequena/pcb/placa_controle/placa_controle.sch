EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp "UNISANTA"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Arduino:Arduino_MEGA A1
U 1 1 615CE099
P 1550 3100
F 0 "A1" H 1550 5667 50  0000 C CNN
F 1 "Arduino_MEGA" H 1550 5576 50  0000 C CNN
F 2 "Arduino:Arduino_MEGA" H 1550 3100 50  0001 L BNN
F 3 "" H 1550 3100 50  0001 L BNN
F 4 "Dev.kit: Arduino; SPI, TWI, UART; ICSP, USB B, pin strips, supply" H 1550 3100 50  0001 L BNN "DESCRIPTION"
F 5 "None" H 1550 3100 50  0001 L BNN "PACKAGE"
F 6 "ARDUINO MEGA2560 REV3 - RETAIL" H 1550 3100 50  0001 L BNN "MP"
F 7 "Unavailable" H 1550 3100 50  0001 L BNN "AVAILABILITY"
F 8 "None" H 1550 3100 50  0001 L BNN "PRICE"
F 9 "Arduino" H 1550 3100 50  0001 L BNN "MF"
	1    1550 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 615CFBD3
P 3700 1550
F 0 "R2" V 3493 1550 50  0000 C CNN
F 1 "330" V 3584 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3630 1550 50  0001 C CNN
F 3 "~" H 3700 1550 50  0001 C CNN
	1    3700 1550
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 615D0817
P 4000 2550
F 0 "R3" H 3930 2504 50  0000 R CNN
F 1 "10k" H 3930 2595 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3930 2550 50  0001 C CNN
F 3 "~" H 4000 2550 50  0001 C CNN
	1    4000 2550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 615D1371
P 4350 2350
F 0 "R4" H 4280 2304 50  0000 R CNN
F 1 "330" H 4280 2395 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4280 2350 50  0001 C CNN
F 3 "~" H 4350 2350 50  0001 C CNN
	1    4350 2350
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x04 J6
U 1 1 615D219E
P 7550 1000
F 0 "J6" H 7630 992 50  0000 L CNN
F 1 "SENSOR_UM" H 7630 901 50  0000 L CNN
F 2 "TerminalBlock_Altech:Altech_AK300_1x04_P5.00mm_45-Degree" H 7550 1000 50  0001 C CNN
F 3 "~" H 7550 1000 50  0001 C CNN
	1    7550 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2200 4350 2150
Wire Wire Line
	4000 2150 4000 2400
Text Label 4650 2150 2    50   ~ 0
chave
Connection ~ 4350 2150
$Comp
L power:+5V #PWR0101
U 1 1 615D8FDA
P 3300 2100
F 0 "#PWR0101" H 3300 1950 50  0001 C CNN
F 1 "+5V" H 3315 2273 50  0000 C CNN
F 2 "" H 3300 2100 50  0001 C CNN
F 3 "" H 3300 2100 50  0001 C CNN
	1    3300 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2100 3300 2150
Wire Wire Line
	4350 1600 4350 1550
Text Label 3250 1550 0    50   ~ 0
ledCode
Wire Wire Line
	7250 1250 7250 1200
Wire Wire Line
	7250 1200 7350 1200
$Comp
L power:+5V #PWR0102
U 1 1 615DE9AD
P 7250 850
F 0 "#PWR0102" H 7250 700 50  0001 C CNN
F 1 "+5V" H 7265 1023 50  0000 C CNN
F 2 "" H 7250 850 50  0001 C CNN
F 3 "" H 7250 850 50  0001 C CNN
	1    7250 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 850  7250 900 
Wire Wire Line
	7250 900  7350 900 
$Comp
L Connector:Screw_Terminal_01x04 J7
U 1 1 615E01A5
P 7550 1900
F 0 "J7" H 7630 1892 50  0000 L CNN
F 1 "SENSOR_DOIS" H 7630 1801 50  0000 L CNN
F 2 "TerminalBlock_Altech:Altech_AK300_1x04_P5.00mm_45-Degree" H 7550 1900 50  0001 C CNN
F 3 "~" H 7550 1900 50  0001 C CNN
	1    7550 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2150 7250 2100
Wire Wire Line
	7250 2100 7350 2100
$Comp
L power:+5V #PWR0103
U 1 1 615E038F
P 7250 1750
F 0 "#PWR0103" H 7250 1600 50  0001 C CNN
F 1 "+5V" H 7265 1923 50  0000 C CNN
F 2 "" H 7250 1750 50  0001 C CNN
F 3 "" H 7250 1750 50  0001 C CNN
	1    7250 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1750 7250 1800
Wire Wire Line
	7250 1800 7350 1800
$Comp
L Connector:Screw_Terminal_01x04 J8
U 1 1 615E38EB
P 7550 2800
F 0 "J8" H 7630 2792 50  0000 L CNN
F 1 "SENSOR_TRES" H 7630 2701 50  0000 L CNN
F 2 "TerminalBlock_Altech:Altech_AK300_1x04_P5.00mm_45-Degree" H 7550 2800 50  0001 C CNN
F 3 "~" H 7550 2800 50  0001 C CNN
	1    7550 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3050 7250 3000
Wire Wire Line
	7250 3000 7350 3000
$Comp
L power:+5V #PWR0104
U 1 1 615E38F9
P 7250 2650
F 0 "#PWR0104" H 7250 2500 50  0001 C CNN
F 1 "+5V" H 7265 2823 50  0000 C CNN
F 2 "" H 7250 2650 50  0001 C CNN
F 3 "" H 7250 2650 50  0001 C CNN
	1    7250 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2650 7250 2700
Wire Wire Line
	7250 2700 7350 2700
$Comp
L Connector:Screw_Terminal_01x04 J5
U 1 1 615E4A6B
P 6600 1000
F 0 "J5" H 6680 992 50  0000 L CNN
F 1 "LCD" H 6680 901 50  0000 L CNN
F 2 "TerminalBlock_Altech:Altech_AK300_1x04_P5.00mm_45-Degree" H 6600 1000 50  0001 C CNN
F 3 "~" H 6600 1000 50  0001 C CNN
	1    6600 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1250 6300 1200
Wire Wire Line
	6300 1200 6400 1200
$Comp
L power:+5V #PWR0105
U 1 1 615E4A79
P 6300 850
F 0 "#PWR0105" H 6300 700 50  0001 C CNN
F 1 "+5V" H 6315 1023 50  0000 C CNN
F 2 "" H 6300 850 50  0001 C CNN
F 3 "" H 6300 850 50  0001 C CNN
	1    6300 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 850  6300 900 
Wire Wire Line
	6300 900  6400 900 
Text Label 6950 1000 0    50   ~ 0
echoUm
Text Label 6950 1100 0    50   ~ 0
triggerUm
Text Label 6900 1900 0    50   ~ 0
echoDois
Text Label 6900 2000 0    50   ~ 0
triggerDois
Text Label 6950 2800 0    50   ~ 0
echoTres
Text Label 6950 2900 0    50   ~ 0
triggerTres
Text Label 2500 800  2    50   ~ 0
SCL
Text Label 2500 900  2    50   ~ 0
SDA
Wire Wire Line
	2450 5450 2450 5400
Wire Wire Line
	2450 5400 2350 5400
$Comp
L power:+5V #PWR0106
U 1 1 615E7E9F
P 600 1350
F 0 "#PWR0106" H 600 1200 50  0001 C CNN
F 1 "+5V" H 615 1523 50  0000 C CNN
F 2 "" H 600 1350 50  0001 C CNN
F 3 "" H 600 1350 50  0001 C CNN
	1    600  1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  1350 600  1400
Wire Wire Line
	600  1400 750  1400
Wire Wire Line
	4350 2150 4650 2150
Wire Wire Line
	6900 1900 7350 1900
Wire Wire Line
	7350 2000 6900 2000
Wire Wire Line
	6950 2900 7350 2900
Wire Wire Line
	6950 2800 7350 2800
Wire Wire Line
	6950 1100 7350 1100
Wire Wire Line
	6950 1000 7350 1000
Wire Wire Line
	2500 900  2350 900 
Wire Wire Line
	2500 800  2350 800 
Wire Wire Line
	4000 2150 4350 2150
Connection ~ 4000 2150
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 6162F11C
P 3650 1900
F 0 "J1" V 3614 1712 50  0000 R CNN
F 1 "CHAVE" V 3523 1712 50  0000 R CNN
F 2 "TerminalBlock_Altech:Altech_AK300_1x02_P5.00mm_45-Degree" H 3650 1900 50  0001 C CNN
F 3 "~" H 3650 1900 50  0001 C CNN
	1    3650 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3650 2100 3650 2150
Wire Wire Line
	3300 2150 3650 2150
Wire Wire Line
	3750 2100 3750 2150
Wire Wire Line
	3750 2150 4000 2150
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 61633920
P 4600 2650
F 0 "J4" H 4680 2642 50  0000 L CNN
F 1 "ledChave" H 4680 2551 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4600 2650 50  0001 C CNN
F 3 "~" H 4600 2650 50  0001 C CNN
	1    4600 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 6163421F
P 4050 1300
F 0 "J3" V 4014 1112 50  0000 R CNN
F 1 "ledCode" V 3923 1112 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4050 1300 50  0001 C CNN
F 3 "~" H 4050 1300 50  0001 C CNN
	1    4050 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 1500 4150 1550
Wire Wire Line
	4150 1550 4350 1550
Wire Wire Line
	4050 1500 4050 1550
Wire Wire Line
	3850 1550 4050 1550
Wire Wire Line
	4400 2650 4350 2650
Wire Wire Line
	4350 2500 4350 2650
Wire Wire Line
	4350 2750 4400 2750
Wire Wire Line
	4350 2750 4350 2900
Text Label 6050 1900 0    50   ~ 0
SDA
Text Label 6050 1800 0    50   ~ 0
SCL
Wire Wire Line
	6050 1800 6250 1800
Wire Wire Line
	6050 1900 6250 1900
$Comp
L power:+5V #PWR0107
U 1 1 6164CAF3
P 6100 1650
F 0 "#PWR0107" H 6100 1500 50  0001 C CNN
F 1 "+5V" H 6115 1823 50  0000 C CNN
F 2 "" H 6100 1650 50  0001 C CNN
F 3 "" H 6100 1650 50  0001 C CNN
	1    6100 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1650 5500 1600
Wire Wire Line
	6100 1700 6100 1650
$Comp
L Modules:MicroSD U2
U 1 1 61657A7F
P 5500 1850
F 0 "U2" H 6078 1371 50  0000 L CNN
F 1 "MicroSD" H 6078 1280 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 5500 1850 50  0001 C CNN
F 3 "" H 5500 1850 50  0001 C CNN
	1    5500 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 616581ED
P 5900 2000
F 0 "#PWR0108" H 5900 1850 50  0001 C CNN
F 1 "+5V" H 5915 2173 50  0000 C CNN
F 2 "" H 5900 2000 50  0001 C CNN
F 3 "" H 5900 2000 50  0001 C CNN
	1    5900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2000 5900 2050
Wire Wire Line
	5900 2750 5900 2700
Text Label 5300 2200 0    50   ~ 0
MISO
Wire Wire Line
	5300 2200 5500 2200
Text Label 5300 2300 0    50   ~ 0
MOSI
Wire Wire Line
	5300 2300 5500 2300
Text Label 5300 2400 0    50   ~ 0
SCK
Text Label 5300 2500 0    50   ~ 0
CS
Wire Wire Line
	5300 2500 5500 2500
Wire Wire Line
	5300 2400 5500 2400
Text Label 550  5200 0    50   ~ 0
MOSI
Wire Wire Line
	550  5200 750  5200
Text Label 2550 5200 2    50   ~ 0
MISO
Wire Wire Line
	2550 5200 2350 5200
Text Label 2550 5300 2    50   ~ 0
SCK
Wire Wire Line
	2550 5300 2350 5300
Text Label 600  5300 0    50   ~ 0
CS
Wire Wire Line
	600  5300 750  5300
Text Label 2700 2400 2    50   ~ 0
echoUm
Text Label 2750 2300 2    50   ~ 0
triggerUm
Text Label 2750 2200 2    50   ~ 0
echoDois
Text Label 2800 2100 2    50   ~ 0
triggerDois
Text Label 2750 2000 2    50   ~ 0
echoTres
Text Label 2800 1900 2    50   ~ 0
triggerTres
Wire Wire Line
	2700 2400 2350 2400
Wire Wire Line
	2350 2300 2750 2300
Wire Wire Line
	2350 2100 2800 2100
Wire Wire Line
	2350 2200 2750 2200
Wire Wire Line
	2350 2000 2750 2000
Wire Wire Line
	2800 1900 2350 1900
Text Label 2500 1700 2    50   ~ 0
led
Wire Wire Line
	2500 1700 2350 1700
Text Label 2600 1600 2    50   ~ 0
chave
Wire Wire Line
	2600 1600 2350 1600
Text Label 2600 1500 2    50   ~ 0
motor
Wire Wire Line
	2600 1500 2350 1500
$Comp
L Device:R R1
U 1 1 616F88AB
P 3700 950
F 0 "R1" V 3493 950 50  0000 C CNN
F 1 "330" V 3584 950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3630 950 50  0001 C CNN
F 3 "~" H 3700 950 50  0001 C CNN
	1    3700 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 1000 4350 950 
Text Label 3350 950  0    50   ~ 0
ledSD
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 616F8BE4
P 4050 700
F 0 "J2" V 4014 512 50  0000 R CNN
F 1 "ledSD" V 3923 512 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4050 700 50  0001 C CNN
F 3 "~" H 4050 700 50  0001 C CNN
	1    4050 700 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 900  4150 950 
Wire Wire Line
	4150 950  4350 950 
Wire Wire Line
	4050 900  4050 950 
Wire Wire Line
	3850 950  4050 950 
$Comp
L power:GND #PWR0109
U 1 1 616FBA22
P 4350 1000
F 0 "#PWR0109" H 4350 750 50  0001 C CNN
F 1 "GND" H 4355 827 50  0000 C CNN
F 2 "" H 4350 1000 50  0001 C CNN
F 3 "" H 4350 1000 50  0001 C CNN
	1    4350 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 616FC1B7
P 4350 1600
F 0 "#PWR0110" H 4350 1350 50  0001 C CNN
F 1 "GND" H 4355 1427 50  0000 C CNN
F 2 "" H 4350 1600 50  0001 C CNN
F 3 "" H 4350 1600 50  0001 C CNN
	1    4350 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2700 4000 2900
$Comp
L power:GND #PWR0111
U 1 1 616FCFAD
P 4000 2900
F 0 "#PWR0111" H 4000 2650 50  0001 C CNN
F 1 "GND" H 4005 2727 50  0000 C CNN
F 2 "" H 4000 2900 50  0001 C CNN
F 3 "" H 4000 2900 50  0001 C CNN
	1    4000 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 616FD3A7
P 4350 2900
F 0 "#PWR0112" H 4350 2650 50  0001 C CNN
F 1 "GND" H 4355 2727 50  0000 C CNN
F 2 "" H 4350 2900 50  0001 C CNN
F 3 "" H 4350 2900 50  0001 C CNN
	1    4350 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 616FD732
P 6300 1250
F 0 "#PWR0113" H 6300 1000 50  0001 C CNN
F 1 "GND" H 6305 1077 50  0000 C CNN
F 2 "" H 6300 1250 50  0001 C CNN
F 3 "" H 6300 1250 50  0001 C CNN
	1    6300 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 616FDDA8
P 7250 1250
F 0 "#PWR0114" H 7250 1000 50  0001 C CNN
F 1 "GND" H 7255 1077 50  0000 C CNN
F 2 "" H 7250 1250 50  0001 C CNN
F 3 "" H 7250 1250 50  0001 C CNN
	1    7250 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 616FE1AB
P 7250 2150
F 0 "#PWR0115" H 7250 1900 50  0001 C CNN
F 1 "GND" H 7255 1977 50  0000 C CNN
F 2 "" H 7250 2150 50  0001 C CNN
F 3 "" H 7250 2150 50  0001 C CNN
	1    7250 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 616FE76B
P 7250 3050
F 0 "#PWR0116" H 7250 2800 50  0001 C CNN
F 1 "GND" H 7255 2877 50  0000 C CNN
F 2 "" H 7250 3050 50  0001 C CNN
F 3 "" H 7250 3050 50  0001 C CNN
	1    7250 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 616FEDD0
P 5500 1650
F 0 "#PWR0117" H 5500 1400 50  0001 C CNN
F 1 "GND" H 5505 1477 50  0000 C CNN
F 2 "" H 5500 1650 50  0001 C CNN
F 3 "" H 5500 1650 50  0001 C CNN
	1    5500 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 616FFA47
P 5900 2750
F 0 "#PWR0118" H 5900 2500 50  0001 C CNN
F 1 "GND" H 5905 2577 50  0000 C CNN
F 2 "" H 5900 2750 50  0001 C CNN
F 3 "" H 5900 2750 50  0001 C CNN
	1    5900 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 617004C5
P 2450 5450
F 0 "#PWR0119" H 2450 5200 50  0001 C CNN
F 1 "GND" H 2455 5277 50  0000 C CNN
F 2 "" H 2450 5450 50  0001 C CNN
F 3 "" H 2450 5450 50  0001 C CNN
	1    2450 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 950  3550 950 
Wire Wire Line
	3250 1550 3550 1550
Wire Wire Line
	6250 1000 6400 1000
Wire Wire Line
	6250 1100 6400 1100
Text Label 6250 1000 0    50   ~ 0
SDA
Text Label 6250 1100 0    50   ~ 0
SCL
$Comp
L power:GND #PWR0120
U 1 1 61784AA3
P 650 5550
F 0 "#PWR0120" H 650 5300 50  0001 C CNN
F 1 "GND" H 655 5377 50  0000 C CNN
F 2 "" H 650 5550 50  0001 C CNN
F 3 "" H 650 5550 50  0001 C CNN
	1    650  5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 6178790E
P 550 1750
F 0 "#PWR0121" H 550 1500 50  0001 C CNN
F 1 "GND" H 555 1577 50  0000 C CNN
F 2 "" H 550 1750 50  0001 C CNN
F 3 "" H 550 1750 50  0001 C CNN
	1    550  1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 61788311
P 400 1600
F 0 "#PWR0122" H 400 1350 50  0001 C CNN
F 1 "GND" H 405 1427 50  0000 C CNN
F 2 "" H 400 1600 50  0001 C CNN
F 3 "" H 400 1600 50  0001 C CNN
	1    400  1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 61788878
P 2550 1150
F 0 "#PWR0123" H 2550 900 50  0001 C CNN
F 1 "GND" H 2555 977 50  0000 C CNN
F 2 "" H 2550 1150 50  0001 C CNN
F 3 "" H 2550 1150 50  0001 C CNN
	1    2550 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1150 2550 1100
Wire Wire Line
	2550 1100 2350 1100
Wire Wire Line
	550  1750 550  1600
Wire Wire Line
	550  1600 750  1600
Wire Wire Line
	750  1500 400  1500
Wire Wire Line
	400  1500 400  1600
Wire Wire Line
	650  5400 750  5400
Wire Wire Line
	650  5400 650  5550
$Comp
L power:+5V #PWR0124
U 1 1 61794BDE
P 2750 3650
F 0 "#PWR0124" H 2750 3500 50  0001 C CNN
F 1 "+5V" H 2765 3823 50  0000 C CNN
F 2 "" H 2750 3650 50  0001 C CNN
F 3 "" H 2750 3650 50  0001 C CNN
	1    2750 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3650 2750 3700
$Comp
L power:+5V #PWR0125
U 1 1 61798A45
P 550 3650
F 0 "#PWR0125" H 550 3500 50  0001 C CNN
F 1 "+5V" H 565 3823 50  0000 C CNN
F 2 "" H 550 3650 50  0001 C CNN
F 3 "" H 550 3650 50  0001 C CNN
	1    550  3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	550  3650 550  3700
Wire Wire Line
	550  3700 750  3700
Text Label 2350 3400 0    50   ~ 0
ledSD
Text Label 2350 3500 0    50   ~ 0
ledCode
Wire Wire Line
	2350 3700 2750 3700
$Comp
L Connector:Screw_Terminal_01x04 J9
U 1 1 616F850E
P 6450 1700
F 0 "J9" H 6530 1692 50  0000 L CNN
F 1 "RTC" H 6530 1601 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 6450 1700 50  0001 C CNN
F 3 "~" H 6450 1700 50  0001 C CNN
	1    6450 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1600 6250 1600
Wire Wire Line
	6100 1700 6250 1700
$EndSCHEMATC
