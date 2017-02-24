; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cmarin <cmarin@student.42.fr>              +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2015/03/17 11:15:23 by cmarin            ;+;    ;+;              ;
;    Updated: 2015/03/17 11:15:23 by cmarin           ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isalnum
	extern _ft_isalpha
	extern _ft_isdigit

_ft_isalnum:
	push rbp
	mov rbp, rsp
	call _ft_isalpha
	cmp rax, 1
	je end
	call _ft_isdigit
	cmp rax, 1
	je end
	jmp ret0

ret0:
	mov rax, 0
	jmp end

end:
	leave
	ret
