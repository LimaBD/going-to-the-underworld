; Graphics Module


%define screen_width 128
%define screen_height 36
%define frame_length 4608


global print_frame


section .data
	new_line db 0xA, 0xD
	frame_string TIMES frame_length db "a"


section .text


; This clear the screen with new lines and
; prints the frame string line per line.
print_frame:
	push rax
	push rcx
	push rdx
	push rsi
	push rdi

	; clear screen with newlines:
	mov rcx, screen_height
	clear_loop:
		; print new line:
		mov rsi, new_line
		mov rdx, 2
		call print
		loop clear_loop


	; prints the string frame:
	xor rcx, rcx
	mov eax, screen_width
	mov edx, screen_height
	print_loop:
		push rax
		push rdx

		; get line offset:
		mul ecx

		; print line:
		lea rsi, [frame_string + eax]
		mov rdx, screen_width
		call print

		; print new line:
		mov rsi, new_line
		mov rdx, 2
		call print

		pop rdx
		pop rax
		inc ecx
		cmp ecx, edx
		jl print_loop

	pop rdi
	pop rsi
	pop rdx
	pop rcx
	pop rax
    ret


; this is used to print;
; input: rsi -> buffer.
;        rdx -> buffer length.
print:
	push rax
	push rcx
	push rdi

	mov rax, 1
	mov rdi, 1
	syscall

	pop rdi
	pop rcx
	pop rax
	ret