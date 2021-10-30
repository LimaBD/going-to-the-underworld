; TODO: make introduction.

                global _start


                section         .data
message:        db            	"This is Going To The Underworld!", 0xA, 0xD


                section     	.text
_start:        	mov            	rax, 1
                mov            	rdi, 1
                mov           	rsi, message
                mov           	rdx, 4
                syscall

				; Finish
                mov            	rax, 60
                xor            	rdi, rdi
                syscall    