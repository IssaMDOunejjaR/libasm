# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: iounejja <iounejja@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/17 11:04:40 by iounejja          #+#    #+#              #
#    Updated: 2020/10/18 16:37:34 by iounejja         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a
SRCS = 	ft_write.s \
		ft_read.s \
		ft_strlen.s \
		ft_strcmp.s \
		ft_strdup.s \
		ft_strcpy.s
OBJS = $(SRCS:.s=.o)

all: $(NAME)

$(NAME): $(OBJS)
		ar rcs $(NAME) $(OBJS)

%.o: %.s
	nasm -f macho64 $< -o $@

clean:
	rm -rf *.o

fclean: clean
		rm -rf $(NAME)

re: fclean all