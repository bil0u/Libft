/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putwchart.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: upopee <upopee@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/28 11:51:44 by upopee            #+#    #+#             */
/*   Updated: 2018/02/02 15:53:51 by upopee           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "read_write.h"

int		ft_putwchart(wchar_t c)
{
	return (ft_putwchart_fd(c, 1));
}
