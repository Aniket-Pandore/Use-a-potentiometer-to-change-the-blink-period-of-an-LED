# MPLAB IDE generated this makefile for use with GNU make.
# Project: Use a potentiometer to change the blink period of an LED.mcp
# Date: Sun Dec 15 19:42:11 2024

AS = MPASMWIN.exe
CC = mcc18.exe
LD = mplink.exe
AR = mplib.exe
RM = rm

Use\ a\ potentiometer\ to\ change\ the\ blink\ period\ of\ an\ LED.cof : Use\ a\ potentiometer\ to\ change\ the\ blink\ period\ of\ an\ LED.o
	$(LD) /p18F4580 /l"C:\Program Files (x86)\Microchip\mplabc18\v3.46\lib" "Use a potentiometer to change the blink period of an LED.o" /u_CRUNTIME /u_DEBUG /z__MPLAB_BUILD=1 /z__MPLAB_DEBUG=1 /o"Use a potentiometer to change the blink period of an LED.cof" /M"Use a potentiometer to change the blink period of an LED.map" /W

Use\ a\ potentiometer\ to\ change\ the\ blink\ period\ of\ an\ LED.o : Use\ a\ potentiometer\ to\ change\ the\ blink\ period\ of\ an\ LED.c C:/Program\ Files\ (x86)/Microchip/mplabc18/v3.46/h/p18f4580.h
	$(CC) -p=18F4580 "Use a potentiometer to change the blink period of an LED.c" -fo="Use a potentiometer to change the blink period of an LED.o" -D__DEBUG -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-

clean : 
	$(RM) "Use a potentiometer to change the blink period of an LED.o" "Use a potentiometer to change the blink period of an LED.cof" "Use a potentiometer to change the blink period of an LED.hex"

