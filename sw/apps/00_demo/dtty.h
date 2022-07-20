
#ifndef DTTY_H
#define DTTY_H

#include <stdint.h>

#define TTY_CHAR    *((volatile uint32_t *)0xff000004)

void tty_write(char* str);

#endif
