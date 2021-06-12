EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title "STM32L0 Modulation Source"
Date "2021-06-12"
Rev "0"
Comp ""
Comment1 "creativecommons.org/licences/by/4.0/"
Comment2 "Licence: CC by 4.0"
Comment3 "Author: Jordan Aceto"
Comment4 ""
$EndDescr
Text HLabel 5350 3750 0    50   Input ~ 0
SPI_MOSI
Text HLabel 5350 3550 0    50   Input ~ 0
SPI_SCK
Text HLabel 5350 3850 0    50   Input ~ 0
SPI_NSS
$Comp
L Analog_DAC:MCP4822 U3
U 1 1 60D5721E
P 5850 3650
F 0 "U3" H 5500 4200 50  0000 C CNN
F 1 "MCP4822" H 5450 4100 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 6650 3350 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf" H 6650 3350 50  0001 C CNN
	1    5850 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 60D5B597
P 5850 4150
F 0 "#PWR026" H 5850 3900 50  0001 C CNN
F 1 "GND" H 5855 3977 50  0000 C CNN
F 2 "" H 5850 4150 50  0001 C CNN
F 3 "" H 5850 4150 50  0001 C CNN
	1    5850 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 60D5D9F9
P 4800 3800
F 0 "#PWR024" H 4800 3550 50  0001 C CNN
F 1 "GND" H 4805 3627 50  0000 C CNN
F 2 "" H 4800 3800 50  0001 C CNN
F 3 "" H 4800 3800 50  0001 C CNN
	1    4800 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3800 4800 3650
Wire Wire Line
	4800 3650 5350 3650
$Comp
L power:+3.3V #PWR025
U 1 1 60D5E788
P 5850 3250
F 0 "#PWR025" H 5850 3100 50  0001 C CNN
F 1 "+3.3V" H 5865 3423 50  0000 C CNN
F 2 "" H 5850 3250 50  0001 C CNN
F 3 "" H 5850 3250 50  0001 C CNN
	1    5850 3250
	1    0    0    -1  
$EndComp
Text HLabel 6650 3850 2    50   Output ~ 0
A_OUT_2
Text HLabel 6650 3550 2    50   Output ~ 0
A_OUT_1
$Comp
L Device:R R2
U 1 1 60DF0F78
P 6500 3550
F 0 "R2" V 6293 3550 50  0000 C CNN
F 1 "100" V 6384 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6430 3550 50  0001 C CNN
F 3 "~" H 6500 3550 50  0001 C CNN
	1    6500 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 60DF6F87
P 6500 3850
F 0 "R3" V 6293 3850 50  0000 C CNN
F 1 "100" V 6384 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6430 3850 50  0001 C CNN
F 3 "~" H 6500 3850 50  0001 C CNN
	1    6500 3850
	0    1    1    0   
$EndComp
$EndSCHEMATC
