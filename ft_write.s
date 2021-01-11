		global		_ft_write
		extern		___error

		section		.text
_error:
		mov rdx, rax
		call ___error
		mov [rax], rdx
		mov rax, -1
		pop rbx
		ret
_ft_write:
		push rbx
		mov rax, 0x02000004
		syscall
		jc _error
		pop rbx
		ret