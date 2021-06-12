EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "STM32L0 Modulation Source"
Date "2021-06-12"
Rev "0"
Comp ""
Comment1 "creativecommons.org/licences/by/4.0/"
Comment2 "Licence: CC by 4.0"
Comment3 "Author: Jordan Aceto"
Comment4 ""
$EndDescr
$Sheet
S 4000 4500 2000 1550
U 60C4BA60
F0 "power_supply" 50
F1 "power_supply.sch" 50
F2 "GROUND" I L 4000 4750 50 
F3 "5V_DC_IN" I L 4000 4650 50 
$EndSheet
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 60C4C184
P 9450 2250
F 0 "J4" H 9350 2600 50  0000 L CNN
F 1 "signal_outputs" H 9100 2500 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9450 2250 50  0001 C CNN
F 3 "~" H 9450 2250 50  0001 C CNN
	1    9450 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 60C526C6
P 2850 2850
F 0 "#PWR01" H 2850 2600 50  0001 C CNN
F 1 "GND" H 2855 2677 50  0000 C CNN
F 2 "" H 2850 2850 50  0001 C CNN
F 3 "" H 2850 2850 50  0001 C CNN
	1    2850 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2850 2850 2750
Wire Wire Line
	2850 2750 2750 2750
$Comp
L power:GND #PWR02
U 1 1 60C52CDB
P 9150 2550
F 0 "#PWR02" H 9150 2300 50  0001 C CNN
F 1 "GND" H 9155 2377 50  0000 C CNN
F 2 "" H 9150 2550 50  0001 C CNN
F 3 "" H 9150 2550 50  0001 C CNN
	1    9150 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 2550 9150 2450
Wire Wire Line
	9150 2450 9250 2450
Wire Wire Line
	2750 2250 3400 2250
Wire Wire Line
	3400 2250 3400 2350
Wire Wire Line
	2750 2350 3300 2350
Wire Wire Line
	3300 2350 3300 2550
Wire Wire Line
	2750 2450 3200 2450
Wire Wire Line
	3200 2450 3200 2750
Wire Wire Line
	9250 2150 8500 2150
Wire Wire Line
	9250 2250 8600 2250
Wire Wire Line
	8600 2250 8600 2350
Wire Wire Line
	8600 2350 8500 2350
Wire Wire Line
	8700 2350 8700 3150
Wire Wire Line
	8700 2350 9250 2350
Wire Wire Line
	6000 2150 6500 2150
Wire Wire Line
	6500 2350 6000 2350
Wire Wire Line
	6000 2550 6500 2550
Wire Wire Line
	2750 2150 4000 2150
Wire Wire Line
	3400 2350 4000 2350
Wire Wire Line
	3300 2550 4000 2550
Wire Wire Line
	3200 2750 4000 2750
$Comp
L Device:R R4
U 1 1 60FB255D
P 8450 3150
F 0 "R4" V 8243 3150 50  0000 C CNN
F 1 "100" V 8334 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8380 3150 50  0001 C CNN
F 3 "~" H 8450 3150 50  0001 C CNN
	1    8450 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 3150 8700 3150
Wire Wire Line
	8300 3150 6000 3150
$Sheet
S 4000 2000 2000 1500
U 60C41260
F0 "microcontroller" 50
F1 "microcontroller.sch" 50
F2 "SPI1_NSS" O R 6000 2550 50 
F3 "SPI1_SCK" O R 6000 2350 50 
F4 "SPI1_MOSI" O R 6000 2150 50 
F5 "A_IN_4" I L 4000 2750 50 
F6 "A_IN_1" I L 4000 2150 50 
F7 "A_IN_2" I L 4000 2350 50 
F8 "A_IN_3" I L 4000 2550 50 
F9 "D_IN_1" I L 4000 2950 50 
F10 "D_IN_2" I L 4000 3150 50 
F11 "D_OUT" O R 6000 3150 50 
$EndSheet
$Sheet
S 6500 2000 2000 750 
U 60C4B1AB
F0 "SPI_DAC" 50
F1 "SPI_DAC.sch" 50
F2 "SPI_MOSI" I L 6500 2150 50 
F3 "SPI_SCK" I L 6500 2350 50 
F4 "SPI_NSS" I L 6500 2550 50 
F5 "A_OUT_2" O R 8500 2350 50 
F6 "A_OUT_1" O R 8500 2150 50 
$EndSheet
Wire Wire Line
	2750 2550 3100 2550
Wire Wire Line
	3100 2550 3100 2950
Wire Wire Line
	3100 2950 4000 2950
Wire Wire Line
	2750 2650 3000 2650
Wire Wire Line
	3000 2650 3000 3150
Wire Wire Line
	3000 3150 4000 3150
$Comp
L Connector_Generic:Conn_01x10 J1
U 1 1 6114A721
P 2550 2250
F 0 "J1" H 2468 2867 50  0000 C CNN
F 1 "inputs" H 2468 2776 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 2550 2250 50  0001 C CNN
F 3 "~" H 2550 2250 50  0001 C CNN
	1    2550 2250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2750 1950 2850 1950
Wire Wire Line
	2850 1950 2850 1850
Wire Wire Line
	2850 1850 2750 1850
$Comp
L power:+5V #PWR0102
U 1 1 6114E78C
P 2850 1750
F 0 "#PWR0102" H 2850 1600 50  0001 C CNN
F 1 "+5V" H 2865 1923 50  0000 C CNN
F 2 "" H 2850 1750 50  0001 C CNN
F 3 "" H 2850 1750 50  0001 C CNN
	1    2850 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1750 2850 1850
Connection ~ 2850 1850
$Comp
L power:GND #PWR0103
U 1 1 6114FD2C
P 2850 2050
F 0 "#PWR0103" H 2850 1800 50  0001 C CNN
F 1 "GND" V 2855 1922 50  0000 R CNN
F 2 "" H 2850 2050 50  0001 C CNN
F 3 "" H 2850 2050 50  0001 C CNN
	1    2850 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 2050 2750 2050
$Comp
L power:+5V #PWR0104
U 1 1 611521D8
P 3850 4550
F 0 "#PWR0104" H 3850 4400 50  0001 C CNN
F 1 "+5V" H 3865 4723 50  0000 C CNN
F 2 "" H 3850 4550 50  0001 C CNN
F 3 "" H 3850 4550 50  0001 C CNN
	1    3850 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4550 3850 4650
Wire Wire Line
	3850 4650 4000 4650
$Comp
L power:GND #PWR0105
U 1 1 61155505
P 3850 4850
F 0 "#PWR0105" H 3850 4600 50  0001 C CNN
F 1 "GND" H 3855 4677 50  0000 C CNN
F 2 "" H 3850 4850 50  0001 C CNN
F 3 "" H 3850 4850 50  0001 C CNN
	1    3850 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4850 3850 4750
Wire Wire Line
	3850 4750 4000 4750
$EndSCHEMATC
