#include <p18f4580.h>

void main()
{
    int temp, potvalue;
    TRISC = 0x00; 
    TRISD = 0x00; 
    TRISA = 0xff; 

   
    CCPR1L = 9; 
    CCP1CON = 0x0C; 
    T2CONbits.TMR2ON = 0; 
    T2CONbits.T2CKPS1 = 1; 
    T2CONbits.T2CKPS0 = 0; 
    T2CONbits.TMR2ON = 1; 
    TMR2 = 0; 

    while(1)
    {
        
        ADCON0 = 0x01;
        ADCON1 = 0x0e;
        ADCON2 = 0x80;
        ADCON0bits.GO = 1;
        while(ADCON0bits.GO == 1); 
        temp = ADRESH; 
        temp = temp << 8; 
        temp = temp + ADRESL; 
        potvalue = temp >> 2; 
        PR2 = potvalue; 
    }
}