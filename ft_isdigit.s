; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cmarin <cmarin@student.42.fr>              +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/17 10:38:58 by cmarin            ;+;    ;+;              ;
;    Updated: 2015/03/17 10:38:58 by cmarin           ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isdigit

_ft_isdigit:
	push rbp
	mov rbp, rsp
	cmp rdi, 48
	jl ret0
	cmp rdi, 57
	jg ret0
	jmp ret1

ret0:
	mov rax, 0
	jmp end

ret1:
	mov rax, 1
	jmp end

end:
	leave
	ret
