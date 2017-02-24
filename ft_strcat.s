; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cmarin <cmarin@student.42.fr>              +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/16 15:58:49 by cmarin            ;+;    ;+;              ;
;    Updated: 2015/03/16 15:58:49 by cmarin           ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strcat

_ft_strcat:
	push rbp
	mov rbp, rsp
	mov rbx, rdi

while:
	cmp byte [rbx], 0
	je while2
	inc rbx
	jmp while

while2:
	cmp byte [rsi], 0
	je end
	mov al, byte [rsi]
	mov byte [rbx], al
	inc rbx
	inc rsi
	jmp while2

end:
	mov rax, rdi
	leave
	ret
