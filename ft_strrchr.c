#include "libft.h"

char	*ft_strrchr(const char *s, int c)
{
	size_t	slen;

	slen = ft_strlen(s);
	while (slen > 0)
	{
		if (s[slen - 1] == (char)c)
			return (char *)(s + slen - 1);
	slen--;
	}
	if (s[0] == (char)c)
			return (char *)s;
	return NULL;
}
