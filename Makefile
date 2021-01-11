.PHONY: all re fclean clean

NAME = libasm.a

HEADER = libasm.h

SRC =	ft_strlen.s ft_strcpy.s \
		ft_strcmp.s ft_write.s \
		ft_read.s ft_strdup.s

SRCO = ft_strlen.o ft_strcpy.o \
		ft_strcmp.o ft_write.o \
		ft_read.o ft_strdup.o


FLAGS = -fmacho64

NA = nasm

all: $(NAME)

$(NAME): $(SRCO)
	ar rcs $(NAME) $(SRCO)

%.o:%.s $(HEADER)
	$(NA) $(FLAGS) $<

clean:
	rm -f $(SRCO)

fclean: clean
	rm -f $(NAME)

re: fclean all