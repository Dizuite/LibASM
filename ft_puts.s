; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cmarin <cmarin@student.42.fr>              +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/17 12:32:51 by cmarin            ;+;    ;+;              ;
;    Updated: 2015/03/17 12:32:51 by cmarin           ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define MACH_SYSCALL(nb)	0x2000000 | nb

section .data
nulo:
	.nu db "(null)"

section .text
	global _ft_puts

backn:
	.rc db 10

_ft_puts:
	push rbp
	mov rbp, rsp
	mov rbx, rdi
	cmp rdi, 0
	je nul
	jmp while

nul:
	mov rax, MACH_SYSCALL(4)
	mov rdi, 1
	lea rsi, [rel nulo.nu]
	mov rdx, 6
	syscall
	jmp end

while:
	cmp byte [rbx], 0
	je end
	mov rax, MACH_SYSCALL(4)
	mov rdi, 1
	mov rsi, rbx
	mov rdx, 1
	syscall
	inc rbx
	jmp while

end:
	mov rax, MACH_SYSCALL(4)
	mov rdi, 1
	lea rsi, [rel backn.rc]
	mov rdx, 1
	syscall
	leave
	ret
