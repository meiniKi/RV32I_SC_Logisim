
#include "main.h"
#include "dledbar.h"
#include "dtty.h"
#include <stdint.h>



int main(void)
{
    uint32_t pattern[2] = {0x55555555, 0x11111111}; 

    while(1)
    {   
        /*                                    
        tty_write(" _____     _ _        _____ _             _____ \n");
        tty_write("|  |  |___| | |___   | __  |_|___ ___ ___|  |  |\n");
        tty_write("|     | -_| | | . |  |    -| |_ -|  _|___|  |  |\n");
        tty_write("|__|__|___|_|_|___|  |__|__|_|___|___|    \\___/ \n");
                                                       
        tty_write("\n\n Let me do something...\n");
        */
        for(uint8_t i = 0; i < 8; i++)
        {
            ledbar_write(pattern[i%2]);
            for(uint8_t j = 0; j < 12; j++) __asm__ volatile("nop");

            ledbar_write(pattern[(i+1)%2]);
            for(uint8_t j = 0; j < 12; j++) __asm__ volatile("nop");
        }

        uint32_t val = 1;
        for(uint32_t j = 0; j < 4; j++)
        {
            for(uint8_t i = 0; i < 31; i++)
            {
                ledbar_write(val);
                val <<= 1;
            }
            for(uint8_t i = 0; i < 31; i++)
            {
                ledbar_write(val);
                val >>= 1;
            }
        }

        ledbar_write(0x00);

        tty_write("\n\n Done\n");
        for(uint8_t j = 0; j < 64; j++) __asm__ volatile("nop");
        tty_write("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");

    };                                                                
}
