; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isspace.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cmarin <marvin@42.fr>                      +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/04/16 14:23:57 by cmarin            ;+;    ;+;              ;
;    Updated: 2015/04/16 14:23:57 by cmarin           ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isspace

_ft_isspace:
	push rbp
	mov rbp, rsp
	cmp rdi, 32
	je ret1
	cmp rdi, 12
	je ret1
	cmp rdi, 9
	je ret1
	cmp rdi, 10
	je ret1
	cmp rdi, 11
	je ret1
	cmp rdi, 13
	je ret1
	jmp ret0

ret1:
	mov rax, 1
	jmp end

ret0:
	mov rax, 0
	jmp end

end:
	leave
	ret
