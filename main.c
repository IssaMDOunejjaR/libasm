/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: iounejja <iounejja@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/07 18:38:15 by iounejja          #+#    #+#             */
/*   Updated: 2020/03/09 16:14:52 by iounejja         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"
#include <unistd.h>

int		main()
{
	char	*str1 = "issam";
	char	*str2 = "ounejjar";
	
	printf("%zu\n", ft_strlen(str1));
}