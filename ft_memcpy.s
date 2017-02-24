; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cmarin <cmarin@student.42.fr>              +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/04/10 15:20:25 by cmarin            ;+;    ;+;              ;
;    Updated: 2015/04/10 15:20:25 by cmarin           ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_memcpy

_ft_memcpy:
	push rbp
	mov rbp, rsp
	mov r8, rdi
	mov rcx, rdx
	repne movsb
	mov rax, r8
	leave
	ret
