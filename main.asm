; TODO: make introduction to this file.


extern print_frame


global _start


section .data


section	.text


_start:
	call presentation
	call menu
	call game
	call end
	ret


presentation:
	; TODO: make presentation.
	ret


menu:
	; TODO: make menu.
	ret


game:
	; TODO: make game.
	ret


end:
	mov rax, 60
	xor rdi, rdi
    syscall
	ret