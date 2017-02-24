; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cmarin <cmarin@student.42.fr>              +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/04/08 18:43:30 by cmarin            ;+;    ;+;              ;
;    Updated: 2015/04/08 20:41:14 by cmarin           ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_memset

_ft_memset:
	push rbp
	mov rbp, rsp
	cmp rdi, 0
	je end
	mov r8, rdi
	mov rax, rsi
	mov rcx, rdx
	rep stosb
	mov rax, r8

end:
	leave
	ret
