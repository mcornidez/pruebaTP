#Makefile para BUE y VAN

CC = gcc
CFLAGS = -Wall -pedantic -std=c99 -fsanitize=address -lm 

all: arbolesVANADT

arbolesVANADT: main.c arbolesADT.c barriosADT.c
	$(CC) -c main.c arbolesADT.c barriosADT.c $(CFLAGS) -D BARRIO=12 ESPECIE=6 DIAMETRO=15
	$(CC) -o arbolesVANADT main.c arbolesADT.c barriosADT.c $(CFLAGS)