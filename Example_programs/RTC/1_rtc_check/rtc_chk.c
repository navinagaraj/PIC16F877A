#include<htc.h>
#include<stdio.h>
#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS&WDTE_OFF&PWRTE_OFF&BOREN_ON&LVP_OFF);

void print_uart(unsigned char *str);
void i2c_init(void);
void uart_init(void);
void uart_tx(unsigned char val);
void delay();
void i2c_wait();
void i2c_start();
void i2c_write(unsigned int data);
unsigned short i2c_read(unsigned short ack);
void i2c_stop();
unsigned char string[50] = "First Controller is working\r";
unsigned char string_[50] = "hiiiiiiiiii\r";


int main()
{
	int a[10],i;
	unsigned char buffer[50];
	uart_init();
	i2c_init();
	delay();
	i2c_wait();
	i2c_start();
	i2c_write(0xD0);
	i2c_write(0x09);
	i2c_write(0x00);
	i2c_stop();


	i2c_wait();
	i2c_start();
	i2c_write(0xD1);
	i2c_wait();
	
	for(i=0;i<2;i++)
		a[i] = i2c_read(1);
	sprintf(buffer,"%x\r %x\r",a[0],a[1]);
	print_uart(buffer);
	i2c_stop();	
	
	while(1);
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
void i2c_init(void)
{
    SSPCON = 0x28; 
    SSPCON2 = 0x00;
    SSPADD  = 49;
    SSPSTAT = 0x00;
}
void i2c_wait()
{
    while ((SSPCON2 & 0x1f) || (SSPSTAT & 0x04)   ) ; 
}
void i2c_start()
{
  i2c_wait(); 
  SEN = 1;    
}
void i2c_write(unsigned int data)
{
  i2c_wait(); 
  SSPBUF = data;
}
unsigned short i2c_read(unsigned short ack)
{
	unsigned short recv;
	i2c_wait();
	RCEN = 1;
	i2c_wait();
	recv = SSPBUF;
	i2c_wait();
	ACKDT = (ack)?0:1;
	ACKEN = 1;
	return recv;
}
void i2c_stop()
{
	i2c_wait();
	PEN = 1;   
}
void delay()
{
	TMR1CS=0;
	T1CKPS0=1;
	T1CKPS1=1;
	TMR1H=0X3C;
	TMR1L=0XB0;
	TMR1ON=1;
	while(!TMR1IF);
			TMR1IF=0;
	TMR1ON=0;
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