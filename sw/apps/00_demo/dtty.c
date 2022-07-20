
#include "dtty.h"


void tty_write(char* str)
{
    while(*str != '\0')
    {
        TTY_CHAR = (uint32_t)(*str);
        str++;
    }
}