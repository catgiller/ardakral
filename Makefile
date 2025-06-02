# Programın adı
NAME = libft

# Derleyici
CC = cc

# Derleyici flag'leri (Warning'ler, Ekstra Warning'ler, Warning'leri Hata Yap)
CFLAGS = -Wall -Wextra -Werror

# Include dosyalarının yolu (-I flag'i ile)
INC = -I includes

# Kaynak dosyaları (.c uzantılı dosyalar)
# Eğer srcs/utils altında ayrı .c dosyaların varsa onları da buraya eklemelisin.
# Örneğin: srcs/utils/ft_error.c srcs/utils/ft_memory.c
SRCS = ft_isalnum.c \
    ft_isalpha.c \
    ft_isdigit.c \
	ft_isascii.c \
	ft_isprint.c \
	ft_strlen.c \
	ft_memset.c \
	ft_bzero.c \
	ft_memcpy.c \
	ft_strlcpy.c \
	ft_strlcat.c \
	ft_tolower.c \
	ft_toupper.c \
	ft_strchr.c \
	ft_strrchr.c \
	ft_strncmp.c \
	ft_memcmp.c \
	ft_strnstr.c \
	ft_atoi.c \
	ft_calloc.c \
	main.c

# Kaynak dosyalarından nesne dosyalarını (.o) oluştur
OBJS = $(SRCS:.c=.o)

# Temizleme komutu (işletim sistemine göre değişebilir, Linux/macOS için)
RM = rm -f

# Ana kural: Programı derler
all: $(NAME)

# Programı linkleme kuralı: Nesne dosyalarından çalıştırılabilir dosyayı oluşturur
$(NAME): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(NAME)

# .c dosyalarını .o dosyalarına derleme kuralı
# $< : Kuralın bağımlılığı (yani .c dosyası)
# $@ : Kuralın hedefi (yani .o dosyası)
%.o: %.c includes/bsq.h
	$(CC) $(CFLAGS) $(INC) -c $< -o $@

# Nesne dosyalarını temizleme kuralı
clean:
	$(RM) $(OBJS)

# Nesne dosyalarını ve çalıştırılabilir dosyayı temizleme kuralı
fclean: clean
	$(RM) $(NAME)

# Her şeyi temizleyip yeniden derleme kuralı
re: fclean all

# Bu hedeflerin dosya olmadığını belirtir (make'in kafası karışmasın)
.PHONY: all clean fclean re