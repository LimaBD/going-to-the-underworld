all: going-to-the-underworld clean

main.o:  main.asm
		nasm -f elf64 main.asm

going-to-the-underworld: main.o
		ld -s -o going-to-the-underworld main.o

clean:
		rm -f *.o