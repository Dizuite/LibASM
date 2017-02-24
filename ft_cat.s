; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cmarin <cmarin@student.42.fr>              +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/04/13 12:57:59 by cmarin            ;+;    ;+;              ;
;    Updated: 2015/04/13 12:57:59 by cmarin           ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define BUFF_SIZE 10

section .bss
	buffer resb BUFF_SIZE

section .text
	global _ft_cat

_ft_cat:
	push rbp 
	mov rbp, rsp

loop:
	mov rax, 0x2000003
	push rdi
	lea rsi, [rel buffer]
	mov rdx, BUFF_SIZE
	syscall
	cmp rax, 0
	je end
	mov rdi, 1
	mov rdx, rax
	mov rax, 0x2000004
	syscall
	pop rdi
	jmp loop

end:
	leave
	ret
