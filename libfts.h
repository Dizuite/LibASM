/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cmarin <cmarin@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/04/14 16:54:14 by cmarin            #+#    #+#             */
/*   Updated: 2015/04/17 15:52:54 by cmarin           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>

void	ft_bzero(void *s, size_t n);
void	ft_cat(int fd);
void	ft_puts(char *str);
void	ft_putchar(char c);
void	ft_putstr(char *str);
void	ft_puts_fd(char const *s, int fd);
void	ft_putchar_fd(char c, int fd);
void	ft_putstr_fd(const char *s, int fd);

void	*ft_memcpy(void *dst, const void *src, size_t n);
void	*ft_memset(void *s, int c, size_t n);

int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_strlen(char *str);
int		ft_isspace(int c);
int		ft_toupper(int c);
int		ft_tolower(int c);

char	*ft_strcat(char *dst, const char *src);
char	*ft_strdup(const char *s1);
