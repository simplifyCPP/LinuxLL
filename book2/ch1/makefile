AS = as
LD = ld
ASFLAGS = --64

all: exit

exit: exit.o
	$(LD) exit.o -o exit

exit.o: exit.s
	$(AS) $(ASFLAGS) exit.s -o exit.o

clean:
	rm -f exit exit.o
