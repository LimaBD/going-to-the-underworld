; TODO: make introduction to this file.


; TODO: add extern functions: 'extern function'.
global _start
extern print_frame


section .data
	; TODO: research how much large
	;       should be the frame string.
	%define frame_len 16
	frame db "this is a frame.", 0


section	text
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
	mov rsi, frame
	mov rdi, frame_len
	call print_frame
	ret


game:
	; TODO: make game.
	ret


end:
	xor rdi, rdi
	mov rax, 60
    syscall
	ret