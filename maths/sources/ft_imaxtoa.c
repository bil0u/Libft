/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_imaxtoa.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: upopee <upopee@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/28 11:47:11 by upopee            #+#    #+#             */
/*   Updated: 2018/02/08 06:24:33 by upopee           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stddef.h>
#include "maths.h"

char	*ft_imaxtoa(intmax_t n)
{
	return (ft_imaxtoa_base(n, BASE_10));
}
