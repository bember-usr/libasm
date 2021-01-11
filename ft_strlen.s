		global		_ft_strlen
	
		section		.text
_ft_strlen:
		mov rax, 0				; i = 0
 while:
		cmp byte[rdi + rax], 0	; *(s + i) == 0
		jz return
		inc rax
		jmp while
return:
		ret
