/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: iounejja <iounejja@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/07 18:29:59 by iounejja          #+#    #+#             */
/*   Updated: 2020/03/12 13:49:27 by iounejja         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

# include <unistd.h>
# include <stdio.h>
# include <string.h>

ssize_t		ft_write(int fildes, const void *buf, size_t nbyte);
size_t		ft_strlen(const char *s);
char		*ft_strcpy(char * dst, const char * src);
char		ft_strcmp(const char *s1, const char *s2);
ssize_t		ft_read(int fildes, void *buf, size_t nbyte);
char		*ft_strdup(const char *s1);

#endif