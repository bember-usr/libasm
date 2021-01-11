		global		_ft_strcmp

		section		.text
_ft_strcmp:
		mov rax, 0				; a - b
		mov rcx, 0				; i = 0
while:
		cmp byte[rdi + rcx], 0	;tmp = *(src + i)
		jz _return
		cmp byte[rsi + rcx], 0	;*(dst + i) = tmp
		jz _return
		mov al, byte[rdi + rcx]
		cmp al, byte[rsi + rcx]
		jnz _return				;diff != 0
		inc rcx					;i++
		jmp while
_return:
		mov al, byte[rdi + rcx]
		cmp al, byte[rsi + rcx]
		ja _return_a			;diff>0(above)
		jb _return_b			;diff<0(below)
		ret						;else ret 0
_return_a:
		mov al, byte[rdi + rcx]
		sub al, byte[rsi + rcx]
		ret
_return_b:
		mov al, byte[rdi + rcx]
		sub al, byte[rsi + rcx]	;if byte > al overflow
		sub rax, 256
		ret