# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kangkim <kangkim@student.42seoul.kr>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/22 11:54:02 by kangkim           #+#    #+#              #
#    Updated: 2021/12/23 11:36:40 by kangkim          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = server client
BONUS_NAME = $(NAME)

CC = cc
CFLAGS = -Wall -Wextra -Werror
RM = rm -f

SRCS = server.c			\
	   server_bonus.c	\
	   client.c			\
	   client_bonus.c	\

OBJS = $(SRCS:.c=.o)

# libftprintf
LIBFTPRINTF_DIR = libftprintf
LIBFTPRINTF_A = libftprintf.a

all: $(NAME)

bonus : server_B client_B

.c.o:
	$(CC) $(CFLAGS) -c $< -o $@

server: server.o
	make all -C $(LIBFTPRINTF_DIR)
	$(CC) $(CFLAGS) -o $@ $< -I./ -L$(LIBFTPRINTF_DIR) -lftprintf

client: client.o
	$(CC) $(CFLAGS) -o $@ $< -I./ -lftprintf -L$(LIBFTPRINTF_DIR)

server_B: server_bonus.o
	make all -C $(LIBFTPRINTF_DIR)
	$(CC) $(CFLAGS) -o server $< -I./ -lftprintf -L$(LIBFTPRINTF_DIR)

client_B: client_bonus.o
	$(CC) $(CFLAGS) -o client $< -I./ -lftprintf -L$(LIBFTPRINTF_DIR)

clean:
	$(RM) $(OBJS)
	make clean -C $(LIBFTPRINTF_DIR)

fclean: clean
	$(RM) $(NAME)
	make fclean -C $(LIBFTPRINTF_DIR)

re: fclean all

.PHONY: all $(NAME) $(BONUS_NAME) clean fclean re
