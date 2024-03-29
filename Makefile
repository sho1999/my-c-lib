# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: smuramat <smuramat@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/18 17:12:33 by smuramat          #+#    #+#              #
#    Updated: 2022/08/27 12:26:27 by smuramat         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libft.a

CC	= gcc

SRCNAME	=	ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_memchr.c\
ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_split.c ft_strchr.c\
ft_strdup.c ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strrchr.c ft_strtrim.c\
ft_substr.c ft_strnstr.c ft_tolower.c ft_toupper.c ft_lstadd_back.c ft_lstadd_front.c ft_lstclear.c ft_lstdelone.c ft_lstiter.c\
ft_lstlast.c ft_lstnew.c ft_lstsize.c ft_dlstadd_front.c ft_dlstadd_last.c ft_dlstdel_front.c ft_dlstdel_back.c

CFLAGS	= -Wall	-Wextra	-Werror

RM		=	rm -f

INCDIR	=	./libft

SRCDIR	=	./

SRCS	=	${addprefix ${SRCDIR}, ${SRCNAME}}

OBJS	=	${SRCS:.c=.o}



.c.o:
			${CC} ${CFLAGS}	-I ${INCDIR} -c $< -o ${<:.c=.o}

${NAME}:	${OBJS}
			ar	rc	${NAME}	${OBJS}

all:		${NAME}


clean:
			${RM} ${OBJS}

fclean:		clean
			${RM} ${NAME}

re:			fclean all

.PHONY:	all clean fclean re
