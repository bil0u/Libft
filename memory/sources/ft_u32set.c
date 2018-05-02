/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_u32set.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: upopee <upopee@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/28 11:51:06 by upopee            #+#    #+#             */
/*   Updated: 2018/05/02 04:16:20 by upopee           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>

void	*ft_u32set(void *b, int c, size_t len)
{
	uint32_t *tmp;

	if (len && b)
	{
		tmp = (uint32_t *)b;
		while (len-- > 0)
			*(tmp++) = c;
	}
	return (b);
}
