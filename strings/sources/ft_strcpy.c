/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: upopee <upopee@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/28 11:56:25 by upopee            #+#    #+#             */
/*   Updated: 2018/03/09 00:12:54 by upopee           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

char	*ft_strcpy(char *dst, const char *src)
{
	char	*tmp;

	if (dst)
	{
		if (src)
		{
			tmp = dst;
			while (*src)
				*tmp++ = *src++;
			*tmp = '\0';
		}
		return (dst);
	}
	return (NULL);
}
