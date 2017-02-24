; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cmarin <cmarin@student.42.fr>              +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/16 16:54:30 by cmarin            ;+;    ;+;              ;
;    Updated: 2015/03/16 16:54:30 by cmarin           ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isalpha

_ft_isalpha:
	push rbp
	mov rbp, rsp
	cmp rdi, 65
	jl ret0
	cmp rdi, 122
	jg ret0
	cmp rdi, 90
	jle ret1
	cmp rdi, 97
	jge ret1
	jmp ret0

ret1:
	mov rax, 1
	jmp end

ret0:
	mov rax, 0
	jmp end

end:
	leave
	ret
