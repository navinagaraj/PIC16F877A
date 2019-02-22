#include<htc.h>
#include<stdio.h>
#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_OFF & BOREN_ON & LVP_OFF);
 

void delay();
void spi_init(void);
unsigned char spi_transfer(unsigned char data);
void print_uart(unsigned char *str);
void uart_tx(unsigned char val);
unsigned char uart_rc(void);
void uart_init(void);
unsigned char string[]="PIC initialized...\r";
unsigned char message1[]= "Initializing device\r";

void spi_init(void)
{
	SSPSTAT = 0x00;
	SSPCON  = 0x14; //slave mode
	SSPIE	= 0;
	SSPIF	= 0;
	SSPEN	= 1;
	TRISC3	= 1;
	TRISC4	= 1;
	TRISC5	= 0;
	TRISA5 = 1;		//SS pin mode selection
}


unsigned char spi_transfer(unsigned char data )
{
	SSPBUF	= data;
	while(SSPIF==0);
	SSPIF	= 0;
	return SSPBUF;
}


int main()
{
	unsigned char i,j, reciv,var=0x30;
	char arr[30];
	uart_init();
	print_uart(message1);
	spi_init();
	delay();
	for (j=0;j<10;j++)
	{
		reciv = spi_transfer(var);
		sprintf(arr,"Data from master %x\r",reciv);
		arr[29]=0;
		print_uart(arr);
		uart_tx(var);
		delay();
		uart_tx('\r');
		for (i=0;i<100;i++)
			delay();
		var++;
	}
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



void delay()
{
	TMR1CS	= 0;
	T1CKPS0	= 1;
	T1CKPS1	= 1;
	TMR1H	= 0XFA;
	TMR1L	= 0XDB;
	TMR1ON	= 1;
	while(TMR1IF==0);
	TMR1IF	= 0;
	TMR1ON= 1;
}





void print_uart(unsigned char *str)
{
	
	while(*str)
	{
		uart_tx(*str);
		delay();
		str++;
	}
}