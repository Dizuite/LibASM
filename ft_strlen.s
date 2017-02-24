; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cmarin <cmarin@student.42.fr>              +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/19 15:19:25 by cmarin            ;+;    ;+;              ;
;    Updated: 2015/03/19 15:19:25 by cmarin           ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strlen

_ft_strlen:
	push rbp
	mov rbp, rsp
	cmp rdi, 0
	je end
	mov rcx, -1
	mov al, 0
	repne scasb
	not rcx
	sub rcx, 1
	mov rax, rcx
	leave

end:
	ret
