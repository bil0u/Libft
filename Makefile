# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: upopee <upopee@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/28 11:42:57 by upopee            #+#    #+#              #
#    Updated: 2018/02/21 05:20:24 by upopee           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# -- VARIABLES --

NAME =				libft.a
CC =				gcc
CFLAGS =			-Wall -Werror -Wextra
CPPFLAGS =			-I $(MEMORY_DIR)/$(INC_DIR) \
					-I $(CHAR_DIR)/$(INC_DIR) \
					-I $(STR_DIR)/$(INC_DIR) \
					-I $(WSTR_DIR)/$(INC_DIR) \
					-I $(MATH_DIR)/$(INC_DIR) \
					-I $(FT_PRINTF_DIR)/$(INC_DIR) \
					-I $(LIST_DIR)/$(INC_DIR) \
					-I $(RW_DIR)/$(INC_DIR) \

SHELL =				/bin/bash
AR =				ar -rc
LINK =				ar -s
MKDIR =				mkdir -p
RMDIR =				rm -rf
RM =				rm -f
NORM =				norminette

# -- PATHS NAMES --

SRC_DIR =			sources
INC_DIR =			includes
OBJ_DIR =			.objects

# -- FILES --

MEMORY_DIR =		memory
MEMORY_SRC =		$(patsubst %,$(MEMORY_DIR)/$(SRC_DIR)/%,$(MEMORY_C_FILES:=.c))
MEMORY_INC =		$(patsubst %,$(MEMORY_DIR)/$(INC_DIR)/%,$(MEMORY_H_FILES:=.h))
MEMORY_H_FILES =	memory \

MEMORY_C_FILES =	ft_memalloc \
					ft_memdel \
					ft_memset \
					ft_revmemset \
					ft_bzero \
					\
					ft_memmove \
					ft_memcpy \
					ft_revmemcpy \
					ft_memccpy \
					ft_revmemccpy \
					ft_memchr \
					ft_revmemchr \
					ft_memcmp \
					ft_revmemcmp \

CHAR_DIR =			characters
CHAR_SRC =			$(patsubst %,$(CHAR_DIR)/$(SRC_DIR)/%,$(CHAR_C_FILES:=.c))
CHAR_INC =			$(patsubst %,$(CHAR_DIR)/$(INC_DIR)/%,$(CHAR_H_FILES:=.h))
CHAR_H_FILES =		characters \

CHAR_C_FILES =		ft_isupper \
					ft_islower \
					ft_isalnum \
					ft_isalpha \
					ft_iswhitespace \
					ft_isascii \
					ft_isdigit \
					ft_ishexdigit \
					ft_isprint \
					ft_tolower \
					ft_toupper \

STR_DIR =			strings
STR_SRC =			$(patsubst %,$(STR_DIR)/$(SRC_DIR)/%,$(STR_C_FILES:=.c))
STR_INC =			$(patsubst %,$(STR_DIR)/$(INC_DIR)/%,$(STR_H_FILES:=.h))
STR_H_FILES =		strings \

STR_C_FILES =		ft_strnew \
					ft_strdel \
					ft_strclr \
					ft_strlen \
					\
					ft_strcmp \
					ft_strncmp \
					ft_strequ \
					ft_strnequ \
					ft_nbwords \
					ft_wordlen \
					\
					ft_striter \
					ft_striteri \
					ft_strmap \
					ft_strmapi \
					\
					ft_strcat \
					ft_strncat \
					ft_strlcat \
					ft_strjoin \
					ft_strtrim \
					ft_strsplit \
					ft_strcpy \
					ft_strncpy \
					ft_strsub \
					ft_strstr \
					ft_strnstr \
					ft_strdup \
					ft_strndup \
					ft_strchr \
					ft_strrchr \
					ft_strtoupper \
					\
					ft_strisnumber \
					ft_strishex \
					\
					ft_nextws \

WSTR_DIR =			wide_strings
WSTR_SRC =			$(patsubst %,$(WSTR_DIR)/$(SRC_DIR)/%,$(WSTR_C_FILES:=.c))
WSTR_INC =			$(patsubst %,$(WSTR_DIR)/$(INC_DIR)/%,$(WSTR_H_FILES:=.h))
WSTR_H_FILES = 		wide_strings \

WSTR_C_FILES = 		ft_wcharlen \
					ft_wchar_to_str \
					ft_wchar_to_astr \
					\
					ft_wstrnew \
					ft_wstrdel \
					ft_wstrdup \
					ft_wstrncpy \
					ft_wstrlen \
					ft_wstrbyteslen \
					ft_wstr_to_str \
					ft_wstr_to_astr \

MATH_DIR =			maths
MATH_SRC =			$(patsubst %,$(MATH_DIR)/$(SRC_DIR)/%,$(MATH_C_FILES:=.c))
MATH_INC =			$(patsubst %,$(MATH_DIR)/$(INC_DIR)/%,$(MATH_H_FILES:=.h))
MATH_H_FILES =		maths \

MATH_C_FILES =		ft_atoi \
					ft_atoi_base \
					ft_atol \
					ft_atol_base \
					ft_itoa \
					ft_atoimax \
					ft_atoimax_base \
					\
					ft_itoa \
					ft_itoa_base \
					ft_ltoa \
					ft_ltoa_base \
					ft_imaxtoa \
					ft_imaxtoa_base \
					ft_nbrlen_base \
					ft_sqrt \
					ft_sqrt_next \
					ft_power \
					ft_pgcd \
					ft_swap \
					ft_factorl \
					ft_abs \

FT_PRINTF_DIR =		ft_printf
FT_PRINTF_SRC =		$(patsubst %,$(FT_PRINTF_DIR)/$(SRC_DIR)/%,$(FT_PRINTF_C_FILES:=.c))
FT_PRINTF_INC =		$(patsubst %,$(FT_PRINTF_DIR)/$(INC_DIR)/%,$(FT_PRINTF_H_FILES:=.h))
FT_PRINTF_H_FILES =	char_utils \
					colors_table \
					float_utils \
					ft_printf_structs \
					ft_printf \
					handle_functions \
					handle_utils \
					jump_table \
					numbers_utils \
					process_functions \
					vararg_utils \

FT_PRINTF_C_FILES =	ft_printf \
					vararg_utils \
					handle_utils \
					numbers_utils \
					char_utils \
					float_utils_1 \
					float_utils_2 \
					\
					process_functions \
					\
					parse_flags_1 \
					parse_flags_2 \
					parse_width \
					parse_precision \
					parse_length_1 \
					parse_length_2 \
					\
					handle_char \
					handle_str \
					handle_numbers \
					handle_pointer \
					handle_float \
					handle_float_hex \
					handle_float_scientific \
					handle_float_auto \
					handle_others \

LIST_DIR =			linked_lists
LIST_SRC =			$(patsubst %,$(LIST_DIR)/$(SRC_DIR)/%,$(LIST_C_FILES:=.c))
LIST_INC =			$(patsubst %,$(LIST_DIR)/$(INC_DIR)/%,$(LIST_H_FILES:=.h))
LIST_H_FILES =		linked_lists \

LIST_C_FILES =		ft_lstnew \
					ft_lstnew_nm \
					ft_lstdel \
					ft_lstdelone \
					ft_lstdelthis \
					ft_delcontent \
					\
					ft_lstadd \
					ft_lstappend \
					ft_lstmerge \
					ft_lstreverse \
					ft_lstiter \
					ft_lstforeach \
					ft_lstforeachif \
					ft_lstmap \
					ft_lstat \
					ft_lstlast \
					ft_lstfind \

RW_DIR =			read_write
RW_SRC =			$(patsubst %,$(RW_DIR)/$(SRC_DIR)/%,$(RW_C_FILES:=.c))
RW_INC =			$(patsubst %,$(RW_DIR)/$(INC_DIR)/%,$(RW_H_FILES:=.h))
RW_H_FILES =		read_write \
					get_next_line \

RW_C_FILES =		get_next_line \
					\
					ft_putchar \
					ft_putchar_fd \
					ft_putnchar_fd \
					ft_putstr \
					ft_putstr_fd \
					ft_putendl \
					ft_putendl_fd \
					\
					ft_putwchart \
					ft_putwchart_fd \
					ft_putwstr \
					ft_putwstr_fd \
					ft_putnwstr_fd \
					ft_putnbyteswstr_fd \
					\
					ft_putnbits \
					ft_putnbits_fd \
					ft_putnbytes \
					ft_putnbytes_fd \
					\
					ft_putnbr \
					ft_putnbr_fd \

VPATH =		$(MEMORY_DIR)/$(SRC_DIR):$(CHAR_DIR)/$(SRC_DIR):\
			$(STR_DIR)/$(SRC_DIR):$(WSTR_DIR)/$(SRC_DIR):\
			$(MATH_DIR)/$(SRC_DIR):$(FT_PRINTF_DIR)/$(SRC_DIR):\
			$(LIST_DIR)/$(SRC_DIR):$(RW_DIR)/$(SRC_DIR)

SOURCES =	$(MEMORY_SRC) $(CHAR_SRC) $(STR_SRC) $(WSTR_SRC) \
			$(MATH_SRC) $(FT_PRINTF_SRC) $(LIST_SRC) $(RW_SRC) \

INCLUDES =	$(MEMORY_INC) $(CHAR_INC) $(STR_INC) $(WSTR_INC) \
			$(MATH_INC) $(FT_PRINTF_INC) $(LIST_INC) $(RW_INC) \

OBJECTS =	$(patsubst %,$(OBJ_DIR)/%,$(notdir $(SOURCES:.c=.o)))

# -- IMPLICIT RULES  / LINKING --

$(OBJ_DIR)/%.o: %.c $(INCLUDES)
	@$(eval DONE=$(shell echo $$(($(INDEX)*20/$(NB)))))
	@$(eval PERCENT=$(shell echo $$(($(INDEX)*100/$(NB)))))
	@$(eval TO_DO=$(shell echo $$((20-$(INDEX)*20/$(NB) - 1))))
	@$(eval COLOR=$(shell list=(160 196 202 208 215 221 226 227 190 154 118 82 46); index=$$(($(PERCENT) * $${#list[@]} / 100)); echo "$${list[$$index]}"))
	@printf "\r> $(YELLOW)$(NAME)$(EOC) : Creating library...  %2d%% $(CNO)[`printf '*%.0s' {0..$(DONE)}`%*s]$(YELLOW)%*.*s$(EOC)$(ERASELN)" $(PERCENT) $(COLOR) $(TO_DO) "" $(DELTA) $(DELTA) "$(shell echo "$@" | sed 's/^.*\///')"
	@$(CC) -c $< -o $@ $(CFLAGS) $(CPPFLAGS)
	@$(eval INDEX=$(shell echo $$(($(INDEX)+1))))

# -- RULES --

all: $(NAME)

$(NAME): $(OBJ_DIR) $(OBJECTS) Makefile
	@$(AR) $(NAME) $(OBJECTS)
	@$(LINK) $(NAME)
	@printf "\r$(ERASELN)> $(YELLOW)$(NAME)$(EOC) : Library created !\t$(GREEN_B)✓$(EOC)\n"

$(OBJ_DIR):
	@$(MKDIR) $(OBJ_DIR)

clean:
	@if [ -e $(OBJ_DIR) ]; \
	then \
		$(RMDIR) $(OBJ_DIR); \
		printf "> $(YELLOW)$(NAME)$(EOC) : Objects deleted\t$(RED_B)✗$(EOC)\n"; \
	fi;

fclean: clean
	@if [ -e $(NAME) ]; \
	then \
		$(RM) $(NAME); \
		printf "> $(YELLOW)$(NAME)$(EOC) : Library deleted\t$(RED_B)✗$(EOC)\n"; \
	fi;

re: fclean all

norm:
	@$(NORM) $(SRC_DIR)
	@$(NORM) $(INC_DIR)

.PHONY: all clean fclean re norm

# -- DISPLAY --

LEN_NAME =	`printf "%s" $(NAME) |wc -c`
DELTA =		$$(echo "$$(tput cols)-52-$(LEN_NAME)"|bc)
NB =		$(words $(SOURCES))
INDEX=		0

ERASELN =	\033[K
CNO =		\033[38;5;%dm

YELLOW =	\e[31;33m
YELLOW_B =	\e[31;33;1m
GREEN =		\e[32m
GREEN_B =	\e[32;1m
RED =		\e[31m
RED_B =		\e[31;1m
WHITE =		\e[37m
WHITE_B =	\e[37;1m
EOC =		\e[0m
