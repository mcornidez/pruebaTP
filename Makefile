#Makefile para BUE y VAN

CC = gcc
CFLAGS = -Wall -pedantic -std=c99 -fsanitize=address -lm 

all: arbolesVANADT

arbolesVANADT: main.c arbolesADT.c barriosADT.c
	$(CC) -c main.c arbolesADT.c barriosADT.c $(CFLAGS)
	$(CC) -o arbolesVANADT main.c arbolesADT.c barriosADT.c $(CFLAGS) -D BARRIO=12 -D ESPECIE=6 -D DIAMETRO=15
