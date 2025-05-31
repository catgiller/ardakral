#include "libft.h"


int main()
{
    char s[] = "merhaba";
    ft_bzero(s, 31);
    int i = 0;
    while (s[i])
    {
        printf("%c", s[i]);
        i++;
    }
    printf("\n");
}
