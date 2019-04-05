/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abaptist <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/02/27 13:49:18 by abaptist          #+#    #+#             */
/*   Updated: 2019/03/06 11:25:05 by abaptist         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memmove(void *dst, const void *src, size_t len)
{
	size_t				j;
	unsigned char		*ptr;
	const unsigned char	*ptr2;

	ptr = (unsigned char*)dst;
	ptr2 = (unsigned char*)src;
	j = 0;
	if (ptr2 < ptr)
		while (++j <= len)
			ptr[len - j] = ptr2[len - j];
	else
		while (len-- > 0)
			*(ptr++) = *(ptr2++);
	return (dst);
}
