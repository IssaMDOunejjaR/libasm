# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: iounejja <iounejja@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/07 18:30:39 by iounejja          #+#    #+#              #
#    Updated: 2020/03/09 16:14:04 by iounejja         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a
SRCS =	ft_read.s \
		ft_strcmp.s \
		ft_write.s \
		ft_strlen.s
OBJS = $(SRCS:.s=.o)

all: $(NAME)

$(NAME): $(OBJS)
		ar rcs $(NAME) $(OBJS)

%.o: %.s
	nasm -f macho64 $< -o $@

clean: 
	rm -f *.o

fclean: clean
		rm -f $(NAME)

re: fclean all