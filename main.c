/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: iounejja <iounejja@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/10/17 11:14:05 by iounejja          #+#    #+#             */
/*   Updated: 2020/10/23 16:56:32 by iounejja         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"
#include <errno.h>

int main()
{
    char *buff;
    char dest[20];

    // ft_write
    // printf("%zd\n", ft_write(1, "hello\n", 6));
    // printf("%d\n", errno);
    // printf("%zd\n", write(1, "hello\n", 6));
    // printf("%d\n", errno);

    // ft_read
    // printf("%zd\n", ft_read(1, &buff, 100));
    // printf("%d\n", errno);
    // printf("%zd\n", read(1, &buff, 100));
    // printf("%d\n", errno);

    // ft_strlen
    // printf("%zd\n", ft_strlen("065113"));
    // printf("%zd\n", strlen("065113"));

    // ft_strcmp
    // printf("%d\n", ft_strcmp("Hello, World!", "Hello, World!"));
    // printf("%d\n", strcmp("Hello, World!", "Hello, World!"));

    // ft_strcpy
    // printf("%s\n", strcpy(dest, "Hello, World!"));
    // printf("%s\n", ft_strcpy(dest, "Hello, World!"));

    // ft_strdup
    printf("%s\n", ft_strdup("Hello, World!"));
    printf("%s\n", strdup("Hello, World!"));

    return (0);
}
