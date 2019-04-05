/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcat.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abaptist <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/02/19 19:21:19 by abaptist          #+#    #+#             */
/*   Updated: 2019/03/26 13:58:23 by abaptist         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strcat(char *dest, const char *src)
{
	unsigned int g;
	unsigned int j;

	g = 0;
	while (dest[g] != '\0')
		++g;
	j = 0;
	while (src[j] != '\0')
	{
		dest[g] = src[j];
		g++;
		++j;
	}
	dest[g] = '\0';
	return (dest);
}
