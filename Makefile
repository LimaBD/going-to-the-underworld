debug_flags = -g
object_files = main.o graphics.o

all: going-to-the-underworld clean

main.o:  main.asm
		nasm $(debug_flags) -o main.o -f elf64 main.asm

graphics.o: graphics.asm
		nasm $(debug_flags) -o graphics.o -f elf64 graphics.asm

going-to-the-underworld: $(object_files)
		ld -s $(debug_flags) -o going-to-the-underworld $(object_files)

clean:
		rm -f *.o