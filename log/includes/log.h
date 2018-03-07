/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   log.h                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: upopee <upopee@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/03/05 19:12:11 by upopee            #+#    #+#             */
/*   Updated: 2018/03/07 04:32:11 by upopee           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LOG_H
# define LOG_H

# include <unistd.h>
# include <fcntl.h>
# include <inttypes.h>
# include "../../linked_lists/includes/linked_lists.h"

typedef struct	s_win
{
	int			fd;
	char		*fifo;
	char		flags;
}				t_win;

typedef struct	s_winenv
{
	uint8_t		nb_windows;
	t_list		*windows;
}				t_winenv;

/*
** -- CLIENT SIDE FUNCTIONS --
*/

int			open_window_new(char *fifo);
int			open_window(char *fifo, int s_flags);
int			print_to_window(int fd, char *msg);
int			close_window(int fd);
void		close_allwindows(void);

/*
** -- TOOLS --
*/

t_winenv	*get_winenv(void);
int			item_fd_cmp(t_win *item, void *fd_ref);
int			close_pipe(int fd, char *fifo, int s_flags);
void		terminate_session(void *win_data, size_t size);


/*
** -- SERVER STYLE --
*/

# define SERV_PROMPT	"{yellow} >{eoc} "

# define SERV_WELCOME1	"{yellow}[Welcome to the debug server]{eoc}\t"
# define SERV_WELCOME2	"--> Channel: {cyan}%s{eoc} (fd {yellow}%d{eoc})\n"
# define SERV_GOODBYE1	"{yellow}\n[Session closed by the client]{eoc}\n"

# define SERV_NOPARAM	"{red}Error:{eoc} no parameter given\n"
# define SERV_BADPARAM	"{red}Error:{eoc} {yellow}%d{eoc} parameters given, only 1 needed\n"
# define SERV_OPENERR	"{red}Error:{eoc} Impossible to open '%s'\n"
# define SERV_READERR	"{red}Error:{eoc} impossible to read from fd {yellow}%d{eoc}\n"


/*
** -- CLIENT STYLE --
*/

# define CLIENT_PROMPT	"{yellow}Input >{eoc} "
# define CLIENT_RUN		"{green}[Connection etablished on {cyan}%s{green} on fd {yellow}%d{green}]{eoc}\n"

/*
** -- SYSTEM ACTIONS INFOS --
*/

# define LOG_ERR_NONAME	"{red}Error:{eoc} no name provided\n"
# define LOG_ERR_MKFIFO	"{red}Error:{eoc} Couldnt create fifo '%s'\n"
# define LOG_ERR_OPEN	"{red}Error:{eoc} Couldnt open fifo '%s'\n"

# define LOG_MSG_OPEN	"{cyan}'%s'{eoc} opened (fd {yellow}%d{eoc})\n"

# define LOG_MSG_CLOSE	"{cyan}'%s'{eoc} closed (fd {yellow}%d{eoc})\n"
# define LOG_ERR_CLOSE	"{red}Error:{eoc} Couldnt close '%s' window (fd {yellow}%d{eoc})\n"

# define LOG_ERR_BADFD	"{red}Error:{eoc} {yellow}%d{eoc} -> bad fd\n"
# define LOG_ERR_NOFD	"{red}Error:{eoc} fd {yellow}%d{eoc} not found\n"

# define LOG_BUFF_SIZE 4096

# define LOG_NONE (0)
# define LOG_PRINT_NEWLINE (1)
# define LOG_VERBOSE (1 << 1)

#endif
