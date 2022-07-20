
#include "dledbar.h"


void ledbar_write(uint32_t val)
{
    LEDBAR_WORD = val;
}


uint32_t ledbar_read(void)
{
    return LEDBAR_WORD;
}