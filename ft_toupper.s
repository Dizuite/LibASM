; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cmarin <cmarin@student.42.fr>              +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/17 11:33:06 by cmarin            ;+;    ;+;              ;
;    Updated: 2015/03/17 11:33:06 by cmarin           ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_toupper

_ft_toupper:
	push rbp
	mov rbp, rsp
	cmp rdi, 97
	jl nomaj
	cmp rdi, 122
	jg nomaj
	jmp maj

maj:
	sub rdi, 32
	mov rax, rdi
	jmp end

nomaj:
	mov rax, rdi
	jmp end

end:
	leave
	ret
