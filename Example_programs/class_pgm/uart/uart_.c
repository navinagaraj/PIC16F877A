//uart program

#include<htc.h>
#define _XTAL_FREQ 20000000
__CONFIG(HS & WDTDIS & PWRTDIS & BOREN & LVPDIS );

void uart_tx(unsigned char val);
unsigned char uart_rc(void);
void uart_init(void);
void delay();

unsigned char string[]="PIC initialized...\n";

void print_uart(unsigned char *str)
{
	
	while(*str)
	{
		uart_tx(*str);
		delay();
		str++;
	}
}

void delay()
{
		TMR1CS=0;
		
		T1CKPS0=1;
		T1CKPS1=1;
		//TMR1H=0X3C;
		TMR1H=0XFA;
		
		TMR1L=0XB0;
		TMR1ON=1;
		while(!TMR1IF);
				TMR1IF=0;
				TMR1ON=0;
}

int main()
{
	uart_init();
	print_uart(string);
	delay();
	while(1);
}


void uart_tx(unsigned char val)
{

	TXREG = val;
	while(TXIF==0);
	TXIF=0;
}

unsigned char uart_rc(void)
{
	while(RCIF==0);
	RCIF=0;
	return RCREG;
}

void uart_init(void)
{
	TRISC6 = 0; //making TX as output
	TRISC7 = 1; //making RX as input

	TXSTA = 0x00; //Asynchronous mode, 8bit, low speed
	RCSTA = 0x00; //Enable UART to use RC7 and RC6 as UART module pins
	SPBRG = 31; //to generate 9600 baudrate
	TXEN = 1;
	SPEN = 1;
	TXIF=0;
	RCIF=0;
}

