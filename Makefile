# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abaptist <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/22 12:10:09 by abaptist          #+#    #+#              #
#    Updated: 2019/04/04 17:37:48 by abaptist         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_atoi.c \
	  	ft_bzero.c \
	  	ft_isalnum.c \
	  	ft_isalpha.c \
	  	ft_isascii.c \
	  	ft_isdigit.c \
	  	ft_isprint.c \
	  	ft_itoa.c \
	  	ft_memalloc.c \
	  	ft_memccpy.c \
	  	ft_memchr.c \
	  	ft_memcmp.c \
	  	ft_memcpy.c \
	  	ft_memdel.c \
	  	ft_memmove.c \
	  	ft_memset.c \
	  	ft_putchar.c \
	  	ft_putchar_fd.c \
	  	ft_putendl.c \
	  	ft_putendl_fd.c \
	  	ft_putnbr.c \
	  	ft_putnbr_fd.c \
	  	ft_putstr.c \
	  	ft_putstr_fd.c \
	  	ft_strcat.c \
	  	ft_strchr.c \
	  	ft_strclr.c \
	  	ft_strcmp.c \
	  	ft_strcpy.c \
	  	ft_strdel.c \
	  	ft_strdup.c \
		ft_strndup.c \
	  	ft_strequ.c \
	  	ft_striter.c \
	  	ft_striteri.c \
	  	ft_strjoin.c \
	  	ft_strlcat.c \
	  	ft_strlen.c \
	  	ft_strmap.c \
	  	ft_strmapi.c \
	  	ft_strncat.c \
	  	ft_strncmp.c \
	  	ft_strncpy.c \
	  	ft_strnequ.c \
	  	ft_strnew.c \
	  	ft_strnstr.c \
	  	ft_strrchr.c \
	  	ft_strsplit.c \
	  	ft_strstr.c \
	  	ft_strsub.c \
	  	ft_strtrim.c \
	  	ft_tolower.c \
	  	ft_toupper.c \
		ft_countwords.c \
		ft_strcntlastchar.c \
		ft_strcntfirstchar.c \
		ft_isupper.c \
		ft_islower.c \
	  	ft_lstadd.c \
	  	ft_lstdel.c \
	  	ft_lstdelone.c \
	  	ft_lstiter.c \
	  	ft_lstnew.c \
	  	ft_lstmap.c \

FLAGS = -Wall -Wextra -Werror 

OBJ = $(SRC:.c=.o)

INCLUDES = ./

all: $(NAME)

$(NAME): $(SRC) libft.h
	gcc $(FLAGS) -I$(INCLUDES) -c $(SRC)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
