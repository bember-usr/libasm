		global		_ft_strdup
		extern		_malloc
		extern		_ft_strlen
		extern		_ft_strcpy
		
		section		.text
_ft_strdup:
		call _ft_strlen		; in rax
		inc rax
		push rdi
		mov rdi, rax
		call _malloc		; rdi - arg for malloc
		pop rdi
		cmp rax, 0			; malloc ret NULL?
		jz _error			;if NULL
		mov rsi, rdi
		mov rdi, rax
		call _ft_strcpy
		ret
_error:
		ret
