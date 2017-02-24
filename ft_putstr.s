# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_putstr.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cmarin <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/16 17:30:29 by cmarin            #+#    #+#              #
#    Updated: 2015/04/16 17:41:59 by cmarin           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define MACH_SYSCALL(nb)	0x2000000 | nb

section .data
nulo:
	.nu db "(null)"

section .text
	global _ft_putstr

_ft_putstr:
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
	leave
	ret
