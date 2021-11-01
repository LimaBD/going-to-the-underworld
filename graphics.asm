; Graphics Module


global print_frame


section .text

; This prints a string.
; input: rsi -> buffer.
;        rdx -> buffer lenght.
print_frame:
	push rax
	push rdi

    mov rax, 1
    mov rdi, 1
    syscall

	pop rdi
	pop rax
    ret