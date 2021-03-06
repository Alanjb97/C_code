/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnew.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abaptist <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/03/06 17:21:41 by abaptist          #+#    #+#             */
/*   Updated: 2019/04/04 17:45:34 by abaptist         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strnew(size_t size)
{
	size_t	j;
	char	*str;

	if (!(str = ft_memalloc(size + 1)))
		return (NULL);
	j = 0;
	while (j < size)
		str[j++] = '\0';
	return (str);
}
