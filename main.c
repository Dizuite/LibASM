/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cmarin <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/04/16 20:46:56 by cmarin            #+#    #+#             */
/*   Updated: 2015/04/20 21:30:06 by cmarin           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include "libfts.h"

int		test_bzero(void)
{
	char	s[] = "terchy";

	ft_puts("Test de ft_bzero en cours\n");
	usleep(100000);
	ft_putstr("s = ");
	ft_puts(s);
	usleep(100000);
	ft_puts("ft_bzero(s + 2, 4)");
	ft_bzero(s + 2, 4);
	usleep(100000);
	ft_putstr("s = ");
	ft_puts(s);
	usleep(100000);
	if (strcmp("te", s) == 0)
		ft_puts("SUCCESS");
	else
		ft_puts("FAIL");
	usleep(100000);
	ft_puts("\n\n");
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_puts("\n");
	sleep(1);
	return (0);
}

int		is_test(void)
{
	ft_puts("Test des differentes isfonctions\n");
	usleep(100000);
	printf("ft_isalpha('F') = %i\n", ft_isalpha('F'));
	usleep(100000);
	printf("ft_isdigit('9') = %i\n", ft_isdigit('9'));
	usleep(100000);
	printf("ft_isascii('@') = %i\n", ft_isascii('@'));
	usleep(100000);
	printf("ft_isprint(']') = %i\n", ft_isprint(']'));
	usleep(100000);
	ft_puts("L'isfonction qui suit est une fonction bonus");
	usleep(100000);
	printf("ft_isspace(' ') = %i\n", ft_isspace(' '));
	usleep(100000);
	ft_puts("SUCCESS");
	ft_puts("\n\n");
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_puts("\n");
	return (0);
}

int		toupper_tolower_test(void)
{
	ft_puts("Test de ft_toupper et ft_tolower en cours\n");
	usleep(100000);
	printf("ft_toupper('t') = %c\n", ft_toupper('t'));	
	usleep(100000);
	printf("ft_tolower('U') = %c\n", ft_tolower('u'));	
	usleep(100000);
	ft_puts("SUCCESS");
	ft_puts("\n\n");
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_puts("\n\n");
	return (0);
}

int		puts_test(void)
{
	char	s[50];
	int		res;

	ft_puts("Test de ft_puts, ft_putstr et ft_putchar en cours\n");
	usleep(100000);
	ft_puts("Ecrivez quelque chose");
	res = scanf("%s", s);
	if (res != 1)
	{
		ft_puts("ERREUR");
		exit(0);
	}
	ft_putstr("ft_puts('");
	ft_putstr(s);
	ft_puts("')");
	usleep(100000);
	ft_puts(s);
	usleep(100000);
	ft_putstr("ft_putstr('");
	ft_putstr(s);
	ft_puts("')");
	usleep(100000);
	ft_putstr(s);
	usleep(100000);
	ft_putstr("ft_putchar(");
	ft_putchar(s[0]);
	ft_puts(") <-(s[0])");
	usleep(100000);
	ft_putchar(s[0]);
	usleep(100000);
	ft_puts("SUCCESS");
	ft_puts("\n\n");
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_puts("\n\n");
	return (0);
}

int		test_memcpy(void)
{
	char	*dst;
	char	*src;

	ft_puts("Test de ft_memcpy en cours");
	usleep(100000);
	dst = (char *)malloc(sizeof(char) * 4);
	src = (char *)malloc(sizeof(char) * 2);
	dst[0] = 'a';
	dst[1] = 'a';
	dst[2] = 'a';
	dst[3] = 'a';
	src[0] = 'b';
	src[1] = 'b';
	ft_putstr("dst = ");
	ft_puts(dst);
	usleep(100000);
	ft_putstr("src = ");
	ft_puts(src);
	usleep(100000);
	ft_memcpy((void *)dst, (void *)src, 2);
	ft_puts("ft_memcpy((void *)dst, (void *)src, 2)");
	usleep(100000);
	ft_putstr("dst = ");
	ft_puts(dst);
	if (strcmp(dst, "bbaa") == 0)
		ft_puts("SUCCESS");
	else
		ft_puts("FAIL");
	ft_puts("\n\n");
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_puts("\n\n");
	return (0);
}

int		test_memset(void)
{
	char	*gui;
	
	ft_puts("Test de ft_memset en cours");
	usleep(100000);
	gui = (char *)malloc(sizeof(char) * 6);
	gui[0] = 't';
	gui[1] = 'e';
	gui[2] = 'r';
	gui[3] = 'c';
	gui[4] = 'h';
	gui[5] = 'y';
	ft_putstr("str = ");
	ft_puts(gui);
	usleep(100000);
	ft_puts("ft_memset((void *)str, '#', 5)");
	ft_memset((void *)gui, '#', 5);
	usleep(100000);
	ft_putstr("str = ");
	ft_puts(gui);
	usleep(100000);
	if (strcmp(gui, "#####y") == 0)
		ft_puts("SUCCESS");
	else
		ft_puts("FAIL");
	usleep(100000);
	ft_puts("\n\n");
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_puts("\n");
	return (0);
}

int		test_strcat(void)
{
	char	*s;
	char	s2[] = " bay";

	ft_puts("Test de ft_strcat en cours\n");
	usleep(100000);
	s = (char *)malloc(sizeof(char) * 10);
	strcat(s, "terchy");
	printf("s = %s, s2 = %s\n", s, s2);
	usleep(100000);
	strcat(s, s2);
	printf("after strcat(s, s2) s = %s\n", s);
	usleep(100000);
	if (strcmp("terchy bay", s) == 0)
		ft_puts("SUCCESS");
	else
		ft_puts("FAIL");
	usleep(100000);
	ft_puts("\n\n");
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_puts("\n");
	return (0);
}

int		test_strdup(void)
{
	char	*str;
	char	*dup;

	ft_puts("Test de ft_strdup en cours");
	usleep(100000);
	str = (char *)malloc(sizeof(char) * 6);
	str[0] = 't';
	str[1] = 'e';
	str[2] = 'r';
	str[3] = 'c';
	str[4] = 'h';
	str[5] = 'y';
	ft_putstr("str = ");
	ft_puts(str);
	usleep(100000);
	dup = ft_strdup(str);
	ft_puts("dup = ft_strdup(str)");
	usleep(100000);
	ft_putstr("dup = ");
	ft_puts(dup);
	usleep(100000);
	if (strcmp(dup, str) == 0)
	{
		ft_puts("dup = str");
		usleep(100000);
		ft_puts("SUCCESS");
	}
	else
		ft_puts("FAIL");
	free(dup);
	usleep(100000);
	ft_puts("\n\n");
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_puts("\n");
	return (0);
}

int		test_strlen(void)
{
	char	s[50];
	int		res;
	int		i;

	ft_puts("Test de ft_strlen en cours\n");
	usleep(100000);
	ft_puts("Ecrivez quelque chose");
	res = scanf("%s", s);
	if (res != 1)
	{
		ft_puts("ERREUR");
		exit(0);
	}
	i = ft_strlen(s);
	printf("ft_strlen('%s') = %i\n", s, i);
	usleep(100000);
	ft_puts("SUCCESS");
	ft_puts("\n\n");
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_puts("\n\n");
	return (0);
}

int		test_fd(void)
{
	char	s[50];
	int		fd;
	int		res;

	ft_puts("Test des fd_fonctions en cours");
	usleep(100000);
	fd = open("fichierdetest", O_WRONLY | O_APPEND | O_CREAT);
	ft_puts("Ecrivez un caractere, celui ci sera putchar dans le fichier \"fichierdetest\"");
	res = scanf("%s", s);
	if (res != 1)
	{
		ft_puts("ERREUR");
		exit(0);
	}
	ft_putstr("ft_putchar_fd('");
	ft_putchar(s[0]);
	ft_puts("', fd)");
	usleep(100000);
	ft_putchar_fd(s[0], fd);
	ft_puts("Ecrivez quelque chose a puts dans le meme fichier");
	res = scanf("%s", s);
	if (res != 1)
	{
		ft_puts("ERREUR");
		exit(0);
	}
	ft_putstr("ft_puts_fd('");
	ft_putstr(s);
	ft_puts("', fd)");
	usleep(100000);
	ft_puts_fd(s, fd);
	ft_puts("Ecrivez quelque chose a putstr dans le meme fichier (oui, toujours le meme)");
	res = scanf("%s", s);
	if (res != 1)
	{
		ft_puts("ERREUR");
		exit(0);
	}
	ft_putstr("ft_putstr_fd('");
	ft_putstr(s);
	ft_puts("', fd)");
	usleep(100000);
	ft_putstr_fd(s, fd);
	ft_puts("Le test suivant, test_ft_cat, servira de verification de ce dernier");
	ft_puts("\n\n");
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_puts("\n\n");
	return (0);
}

int		test_cat(void)
{
	int	fd;

	ft_puts("Test de ft_cat en cours\n");
	fd = open("fichierdetest", O_RDONLY);
	if (fd == -1)
	{
		ft_puts("open() fail, fichier introuvable. (PS : c'est pas normal)");
		exit(0);
	}
	ft_puts("ft_cat('fichierdetest')");
	ft_cat(fd);
	ft_puts("\n\nSUCCESS");
	ft_puts("\n\n");
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_putchar('.');
	sleep(1);
	ft_puts("\n\n");
	return (0);
}

int		main(void)
{
	ft_putstr("\n\n\n__MAIN DE TEST LIBFT ASSEMBLEUR__\n\n\n");
	test_bzero();
	ft_puts("\n");
	test_strcat();
	ft_puts("\n");
	is_test();
	ft_puts("\n");
	toupper_tolower_test();
	ft_puts("\n");
	puts_test();
	ft_puts("\n");
	test_strlen();
	ft_puts("\n");
	test_memset();
	ft_puts("\n");
	test_memcpy();
	ft_puts("\n");
	test_strdup();
	ft_puts("\n");
	test_fd();
	ft_puts("\n");
	test_cat();
	ft_puts("\n__TEST TERMINE__\n");
	return (0);
}
