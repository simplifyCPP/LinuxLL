CC = gcc
CFLAGS = -O2 -Wall
ASFLAGS = -c

all: app

app: main.o add.o
	$(CC) main.o add.o -o app

main.o: main.c
	$(CC) $(CFLAGS) -c main.c -o main.o

add.o: add.s
	$(CC) $(ASFLAGS) add.s -o add.o

clean:
	rm -f *.o app
