; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cmarin <cmarin@student.42.fr>              +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/17 11:41:19 by cmarin            ;+;    ;+;              ;
;    Updated: 2015/03/17 11:41:19 by cmarin           ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_tolower

_ft_tolower:
	push rbp
	mov rbp, rsp
	cmp rdi, 65
	jl nomaj
	cmp rdi, 90
	jg nomaj
	jmp maj

maj:
	add rdi, 32
	mov rax, rdi
	jmp end

nomaj:
	mov rax, rdi
	jmp end

end:
	leave
	ret
