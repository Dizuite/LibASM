; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putchar.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cmarin <marvin@42.fr>                      +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/04/16 15:29:56 by cmarin            ;+;    ;+;              ;
;    Updated: 2015/04/16 15:29:56 by cmarin           ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define MACH_SYSCALL(nb)	0x2000000 | nb

section .bss
	buff resb 1

section .text
	global _ft_putchar

_ft_putchar:
	push rbp
	mov rbp, rsp
	lea rcx, [rel buff]
	mov [rcx], rdi
	mov rax, MACH_SYSCALL(4)
	mov rdi, 1
	mov rsi, rcx
	mov rdx, 1
	syscall
	leave
	ret
