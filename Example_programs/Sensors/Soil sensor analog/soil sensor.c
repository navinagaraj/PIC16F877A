#include<htc.h>
#define _XTAL_FREQ 20000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_OFF & BOREN_ON & LVP_OFF);


#define RS RC0
#define RW RC1
#define EN RC2

void delay_1();
void delay();
void lcd_cmd(unsigned char cmd);
void lcd_data(unsigned char data);
void adc_init();
unsigned int adc_read(unsigned char);

int main()
{
	
	TRISD	= 0;
	TRISC	= 0;
	TRISB0	= 1;

	lcd_cmd(0x38);
	lcd_cmd(0x01);
	lcd_cmd(0x02);
	lcd_cmd(0x0F);
	lcd_cmd(0X06);
	lcd_cmd(0X80);
	adc_init();
	while(1)
	{
		int a,b,c,d,e;
		unsigned int data=adc_read(0);
		data = ((data*100)/(1024));
		if(data == 0 )
		{
			lcd_data('0'); //No Data
		}

		if(data > 1 && data <10)
		{
			lcd_data('1');	//High
		}
		
		if(data > 10 && data < 20)
		{
			lcd_data('2');  //medium
		}
		if(data > 20 && data < 30)
		{
			lcd_data('3');  //Low
		}

		if(data > 30 && data < 40)
		{
			lcd_data('4');  //Dry
		}
		if(data > 50)
		{
			lcd_data('5');
		}
		for(int i=0;i<20;i++)
		{
			__delay_ms(100);
		}
		lcd_cmd(0x01);	
	}
	
}


void adc_init()
{
  ADCON0 = 0x41; 	
  ADCON1 = 0xC0; 	
                 
}

unsigned int adc_read(unsigned char port)
{
  ADCON0 &= 0xC5; 
  ADCON0 |= port<<3; 
  __delay_ms(4); 
  GO_nDONE = 1;
  while(GO_nDONE); 
  return ((ADRESH<<8)+ADRESL);
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


void delay_1()
{
	for(int i=0;i<20;i++)
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