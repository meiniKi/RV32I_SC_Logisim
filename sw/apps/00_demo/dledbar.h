

#ifndef DLEDBAR_H
#define DLEDBAR_H

#include <stdint.h>

#define LEDBAR_WORD    *((volatile uint32_t *)0xff000000)

void ledbar_write(uint32_t val);

uint32_t ledbar_read(void);


#endif
