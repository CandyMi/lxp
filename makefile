.PHONY : build

default :
	@echo "======================================="
	@echo "Please use 'make build' command to build it.."
	@echo "Please use 'make rebuild' command to build it.."
	@echo "Please use 'make clean' command to clean all."
	@echo "======================================="

CC = cc

INCLUDES += -I../../../src -I/usr/local/include
LIBS = -L../ -L../../../ -L/usr/local/lib

CFLAGS = -O3 -Wall -shared -fPIC
DLL = -lcore -llua -lexpat

build:
	@$(CC) -o lxp.so lxplib.c $(INCLUDES) $(LIBS) $(CFLAGS) $(DLL)
	@mv *.so ../../
