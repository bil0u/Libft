/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_wstrlen.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: upopee <upopee@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/03 05:31:05 by upopee            #+#    #+#             */
/*   Updated: 2017/03/19 13:21:06 by upopee           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <wchar.h>

size_t		ft_wstrlen(wchar_t *ws)
{
	size_t	len;

	len = 0;
	if (ws)
		while (ws[len])
			len++;
	return (len);
}
