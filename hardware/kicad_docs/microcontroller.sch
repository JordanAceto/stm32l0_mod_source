EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title "STM32L0 Modulation Source"
Date "2021-06-12"
Rev "0"
Comp ""
Comment1 "creativecommons.org/licences/by/4.0/"
Comment2 "Licence: CC by 4.0"
Comment3 "Author: Jordan Aceto"
Comment4 ""
$EndDescr
$Comp
L MCU_ST_STM32L0:STM32L031F4Px U?
U 1 1 60C43B70
P 5750 3500
AR Path="/60C43B70" Ref="U?"  Part="1" 
AR Path="/60C41260/60C43B70" Ref="U2"  Part="1" 
F 0 "U2" H 5100 4500 50  0000 C CNN
F 1 "STM32L031F4Px" H 5100 4400 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 5350 2800 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00140359.pdf" H 5750 3500 50  0001 C CNN
	1    5750 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60C43B76
P 5750 4300
AR Path="/60C43B76" Ref="#PWR?"  Part="1" 
AR Path="/60C41260/60C43B76" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 5750 4050 50  0001 C CNN
F 1 "GND" H 5755 4127 50  0000 C CNN
F 2 "" H 5750 4300 50  0001 C CNN
F 3 "" H 5750 4300 50  0001 C CNN
	1    5750 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60C43B7C
P 5750 2800
AR Path="/60C43B7C" Ref="#PWR?"  Part="1" 
AR Path="/60C41260/60C43B7C" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 5750 2650 50  0001 C CNN
F 1 "+3.3V" H 5600 2900 50  0000 C CNN
F 2 "" H 5750 2800 50  0001 C CNN
F 3 "" H 5750 2800 50  0001 C CNN
	1    5750 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR?
U 1 1 60C43B82
P 5850 2800
AR Path="/60C43B82" Ref="#PWR?"  Part="1" 
AR Path="/60C41260/60C43B82" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 5850 2650 50  0001 C CNN
F 1 "+3.3VA" H 6000 2900 50  0000 C CNN
F 2 "" H 5850 2800 50  0001 C CNN
F 3 "" H 5850 2800 50  0001 C CNN
	1    5850 2800
	1    0    0    -1  
$EndComp
Text Label 6250 4100 0    50   ~ 0
SYS_SWCLK
Text Label 6250 4000 0    50   ~ 0
SYS_SWDIO
$Comp
L Device:R R?
U 1 1 60C43B91
P 4950 3200
AR Path="/60C43B91" Ref="R?"  Part="1" 
AR Path="/60C41260/60C43B91" Ref="R1"  Part="1" 
F 0 "R1" V 4850 3000 50  0000 C CNN
F 1 "10k" V 4834 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4880 3200 50  0001 C CNN
F 3 "~" H 4950 3200 50  0001 C CNN
	1    4950 3200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60C43B97
P 4700 3300
AR Path="/60C43B97" Ref="#PWR?"  Part="1" 
AR Path="/60C41260/60C43B97" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 4700 3050 50  0001 C CNN
F 1 "GND" H 4705 3127 50  0000 C CNN
F 2 "" H 4700 3300 50  0001 C CNN
F 3 "" H 4700 3300 50  0001 C CNN
	1    4700 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3300 4700 3200
Wire Wire Line
	4700 3200 4800 3200
Wire Wire Line
	5100 3200 5250 3200
$Comp
L Device:C C?
U 1 1 60C43BA0
P 4150 3250
AR Path="/60C43BA0" Ref="C?"  Part="1" 
AR Path="/60C41260/60C43BA0" Ref="C10"  Part="1" 
F 0 "C10" H 4265 3296 50  0000 L CNN
F 1 "100n" H 4265 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4188 3100 50  0001 C CNN
F 3 "~" H 4150 3250 50  0001 C CNN
	1    4150 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3100 4150 3000
Wire Wire Line
	4150 3000 5250 3000
$Comp
L power:GND #PWR?
U 1 1 60C43BA8
P 4150 3400
AR Path="/60C43BA8" Ref="#PWR?"  Part="1" 
AR Path="/60C41260/60C43BA8" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 4150 3150 50  0001 C CNN
F 1 "GND" H 4155 3227 50  0000 C CNN
F 2 "" H 4150 3400 50  0001 C CNN
F 3 "" H 4150 3400 50  0001 C CNN
	1    4150 3400
	1    0    0    -1  
$EndComp
Text HLabel 6250 3600 2    50   Output ~ 0
D_OUT
Text HLabel 6250 3000 2    50   Input ~ 0
A_IN_4
Text HLabel 6250 3300 2    50   Input ~ 0
A_IN_1
Text HLabel 6250 3200 2    50   Input ~ 0
A_IN_2
Text HLabel 6250 3100 2    50   Input ~ 0
A_IN_3
Text HLabel 6250 3400 2    50   Output ~ 0
SPI1_NSS
Text HLabel 6250 3500 2    50   Output ~ 0
SPI1_SCK
Text HLabel 6250 3700 2    50   Output ~ 0
SPI1_MOSI
NoConn ~ 5250 3800
NoConn ~ 5250 3900
NoConn ~ 5250 4100
Text Label 8150 4050 2    50   ~ 0
SYS_SWCLK
Text Label 8150 4250 2    50   ~ 0
SYS_SWDIO
$Comp
L power:GND #PWR09
U 1 1 60D95DD9
P 8250 4400
F 0 "#PWR09" H 8250 4150 50  0001 C CNN
F 1 "GND" H 8255 4227 50  0000 C CNN
F 2 "" H 8250 4400 50  0001 C CNN
F 3 "" H 8250 4400 50  0001 C CNN
	1    8250 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4400 8250 4150
Wire Wire Line
	8250 4150 8450 4150
Wire Wire Line
	8150 4250 8450 4250
$Comp
L power:+3.3V #PWR010
U 1 1 60D97D2F
P 8350 3850
F 0 "#PWR010" H 8350 3700 50  0001 C CNN
F 1 "+3.3V" H 8365 4023 50  0000 C CNN
F 2 "" H 8350 3850 50  0001 C CNN
F 3 "" H 8350 3850 50  0001 C CNN
	1    8350 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 3850 8350 3950
Wire Wire Line
	8350 3950 8450 3950
Wire Wire Line
	8150 4050 8450 4050
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 60D93AC6
P 8650 4050
F 0 "J3" H 8730 4042 50  0000 L CNN
F 1 "SWD_header" H 8730 3951 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8650 4050 50  0001 C CNN
F 3 "~" H 8650 4050 50  0001 C CNN
	1    8650 4050
	1    0    0    -1  
$EndComp
Text HLabel 6250 3800 2    50   Input ~ 0
D_IN_1
Text HLabel 6250 3900 2    50   Input ~ 0
D_IN_2
$EndSCHEMATC
