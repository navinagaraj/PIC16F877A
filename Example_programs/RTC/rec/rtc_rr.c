#include<htc.h>
#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS&WDTE_OFF&PWRTE_OFF&BOREN_ON&LVP_OFF);
void delay();
void uart_init(void);
void print_uart(unsigned char *str);
void uart_tx(unsigned char val);
unsigned char string[50] = "First Controller is working\r";

int main()
{
	uart_init();
	TRISB0 = 1;
	OPTION_REG	= 0x00;
	GIE	 = 1;
	PEIE = 1;
	INTE = 1; 
	while(1);
}
void interrupt ISR()
{
	if(INTF)
	{
		print_uart(string);
	}
	INTF = 0;
}

void uart_init(void)
{
	TRISC6=0;
	TRISC7=1;
	SPBRG=31;
	TXEN=1;
	SPEN=1;
	TXIF=0;
	RCIF=0;
}

void print_uart(unsigned char *str)
{
	
	while(*str)
	{
		uart_tx(*str);
		str++;
	}
}

void uart_tx(unsigned char val)
{
	TXREG=val;
	while(TXIF==0);
	TXIF=0;
}			