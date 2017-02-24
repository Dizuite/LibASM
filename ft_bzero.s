; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cmarin <cmarin@student.42.fr>              +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/16 13:45:24 by cmarin            ;+;    ;+;              ;
;    Updated: 2015/03/16 13:45:24 by cmarin           ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_bzero

_ft_bzero:
	push rbp
	mov rbp, rsp
	mov rcx, 0
	mov rbx, rdi

while:
	cmp rcx, rsi
	je end
	mov byte [rbx], 0
	inc rbx
	inc rcx
	jmp while

end:
	leave
	ret
