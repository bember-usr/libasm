		global		_ft_read
		extern		___error

		section		.text
_ft_read:
		push rbx
		mov rax, 0x02000003 ;mac adress syscall read
		syscall 
		jc _error
		pop rbx
		ret
_error:
		mov rdx, rax
		call ___error
		mov [rax], rdx
		mov rax, -1
		pop rbx
		ret