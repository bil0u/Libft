/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   log_tools.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: upopee <upopee@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/03/05 19:29:43 by upopee            #+#    #+#             */
/*   Updated: 2018/03/09 07:29:19 by upopee           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <sys/types.h>
#include <sys/stat.h>
#include <stdio.h>
#include "ft_printf.h"
#include "read_write.h"
#include "memory.h"
#include "strings.h"
#include "log.h"

t_logenv	*get_logservice_env(void)
{
	static t_logenv	env = {0, 0};

	return (&env);
}

int			item_fd_cmp(t_logwin *item, void *fd_ref)
{
	return (item->fd - *((int *)fd_ref));
}

int			item_fifo_cmp(t_logwin *item, void *fifo_ref)
{
	return (ft_strcmp(item->fifo, (char *)fifo_ref));
}

int			close_pipe(int fd, char *fifo, int s_flags)
{
	int		ret;

	ret = 0;
	if (fd != -1)
	{
		ret += close(fd);
		if (s_flags & LOG_F_VERBOSE)
		{
			if (ret)
				ft_dprintf(2, LOG_ERR_CLOSE, fifo, fd);
			else
				ft_printf(CLIENT_CLOSING, fifo);
		}
	}
	if (fifo)
		ret += remove(fifo);
	return (ret);
}

void		terminate_session(void *win_data, size_t size)
{
	t_logwin	*to_close;

	(void)size;
	to_close = (t_logwin *)win_data;
	if (close_pipe(to_close->fd, to_close->fifo, to_close->flags) > 0)
		ft_dprintf(2, LOG_ERR_CLOSE, to_close->fifo, to_close->fd);
	ft_memdel((void **)&to_close);
}
