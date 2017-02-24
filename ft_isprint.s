; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cmarin <cmarin@student.42.fr>              +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/17 11:25:43 by cmarin            ;+;    ;+;              ;
;    Updated: 2015/03/17 11:26:07 by cmarin           ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isprint

_ft_isprint:
	push rbp
	mov rbp, rsp
	cmp rdi, 32
	jl ret0
	cmp rdi, 126
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
