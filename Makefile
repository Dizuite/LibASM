# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cmarin <cmarin@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/19 11:20:49 by cmarin            #+#    #+#              #
#    Updated: 2015/04/17 17:02:33 by cmarin           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC= ft_bzero.s\
	 ft_strcat.s\
	 ft_isalpha.s\
	 ft_isdigit.s\
	 ft_isalnum.s\
	 ft_isascii.s\
	 ft_isprint.s\
	 ft_toupper.s\
	 ft_tolower.s\
	 ft_puts.s\
	 ft_strlen.s\
	 ft_memset.s\
	 ft_memcpy.s\
	 ft_strdup.s\
	 ft_cat.s\
	 ft_isspace.s\
	 ft_putchar.s\
	 ft_putstr.s\
	 ft_puts_fd.s\
	 ft_putchar_fd.s\
	 ft_putstr_fd.s\

OBJ = $(SRC:%.s=%.o)
LIB = libfts.a
AR = ar rc
RANLIB = ranlib
CC = ~/.brew/Cellar/nasm/2.11.08/bin/nasm -f macho64
RM = rm -f

all: $(LIB)

$(LIB): $(OBJ)
	@echo "Creating Library..."
	@$(AR) $(LIB) $(OBJ)
	@echo "Done."
	@echo "Indexing Library..."
	@$(RANLIB) $(LIB)
#	@sleep 2.5
#	@echo "Segmentation fault: 11"
#	@sleep 5
#	@echo "Nan j'deconne Reynald t'es une pute"
#	@sleep 3
#	@echo "PUTE"
#	@sleep 1
#	@echo "PUTE"
#	@sleep 0.9
#	@echo "PUTE"
#	@sleep 0.8
#	@echo "PUTE"
#	@sleep 0.7
#	@echo "PUTE"
#	@sleep 0.6
#	@echo "PUTE"
#	@sleep 0.5
#	@echo "PUTE"
#	@sleep 0.4
#	@echo "PUTE"
#	@sleep 0.3
#	@echo "PUTE"
#	@sleep 0.2
#	@echo "PUTE"
#	@sleep 0.1
#	@echo "PUTE"
#	@sleep 0.1
#	@echo "PUTE"
#	@sleep 0.1
#	@echo "PUTE"
#	@sleep 0.1
#	@echo "PUTE"
#	@sleep 0.1
#	@echo "PUTE"
#	@sleep 0.1
#	@echo "PUTE"
#	@sleep 0.1
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "PUTE"
#	@sleep 0.05
#	@echo "..."
#	@sleep 1
	@echo "Done."

%.o: %.s libfts.h
	@echo "Compiling $<"
	@$(CC) $<

clean:
	@echo "Cleaning object files..."
	@$(RM) $(OBJ)
	@echo "Done."

fclean: clean
	@echo "Cleaning Library..."
	@$(RM) $(LIB)
	@echo "Done."

re: fclean all
