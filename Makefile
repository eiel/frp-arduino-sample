NO_CORE = Yes

BOARD_TAG = uno
MCU = atmega328p
F_CPU = 16000000L

AVRDUDE_ARD_PROGRAMMER = arduino
AVRDUDE_ARD_BAUDRATE = 115200

include /usr/local/opt/arduino-mk/Arduino.mk
