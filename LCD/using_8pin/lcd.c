#include<htc.h>
#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_OFF & BOREN_ON & LVP_OFF);


#define RS RC0
#define RW RC1
#define EN RC2


void delay();
void lcd_cmd(unsigned char cmd);
void lcd_data(unsigned char data);


int main()
{
	
	TRISD	= 0;
	TRISC	= 0;
	PORTB	= 0x00;

	lcd_cmd(0x38);
	lcd_cmd(0x01);
	lcd_cmd(0x02);
	lcd_cmd(0x0F);
	lcd_cmd(0X06);
	lcd_cmd(0X80);
	
	for(int i=0;i<6;i++)
	{
		lcd_data('E');
	}
	while(1);
}


void delay()
{
	TMR1CS	= 0;
	T1CKPS0	= 1;
	T1CKPS1	= 1;
	TMR1H	= 0X3C;
	TMR1L	= 0XB0;
	TMR1ON	= 1;
	while(TMR1IF==0);
	TMR1IF	= 0;
	TMR1ON= 1;
}


void lcd_cmd(unsigned char cmd)
{
	RS		= 0;
	RW		= 0;
	EN 		= 1;
	PORTD	= cmd;
	delay();
	EN		= 0;
}


void lcd_data(unsigned char data)
{
	RS		= 1;
	RW		= 0;
	EN		= 1;
	PORTD	= data;
	delay();
	EN		= 0;
}