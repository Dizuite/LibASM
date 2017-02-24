; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cmarin <cmarin@student.42.fr>              +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/17 11:20:53 by cmarin            ;+;    ;+;              ;
;    Updated: 2015/03/17 11:20:53 by cmarin           ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isascii

_ft_isascii:
	push rbp
	mov rbp, rsp
	cmp rdi, 0
	jl ret0
	cmp rdi, 127
	jg ret0
	jmp ret1

ret0:
	mov rax, 0
	jmp end

ret1:
	mov rax, 1
	jmp end

end:
	leave
	ret
