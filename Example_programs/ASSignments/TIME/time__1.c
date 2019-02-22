#include<htc.h>
__CONFIG(0x1F7A);
void delay();
void num();

int i,j,a,b,c,d,e,f;
char arr[]={0xFC,0X60,0XDA,0XF2,0X66,0XB6,0XBE,0XE0,0XFE,0XF6};

int main()
{
	TRISD3	= 0;
	TRISD2	= 0;
	TRISD1	= 0;
	TRISD0	= 0;
	TRISB	= 0;
	while(1)
	{
		for(a=0;a<6;a++)
			for(b=0;b<10;b++)
				for(c=0;c<6;c++)
					for(d=0;d<10;d++)	
						//for(e=0;e<6;e++)
						//	for(f=0;f<10;f++)
										num();
	}
}
void num()
{
	for(i=0;i<10;i++)
	{
		TMR1CS	= 0;
		T1CKPS0	= 1;
		T1CKPS1	= 1;
		TMR1H	= 0X0B;
		TMR1L	= 0XDC;
		TMR1ON	= 1;
		while(!TMR1IF)
		{
			RD0		= 0;
			RD1		= 0;
			RD2		= 0;
			RD3		= 1;
			PORTB	= arr[d];
			delay();
			RD0		= 0;
			RD1		= 0;
			RD2		= 1;
			RD3		= 0;
			PORTB	= arr[c];
			delay();
			RD0		= 0;
			RD1		= 1;
			RD2		= 0;
			RD3		= 0;
			PORTB	= arr[b]+1;
			delay();
			RD0		= 1;
			RD1		= 0;
			RD2		= 0;
			RD3		= 0;
			PORTB	= arr[a];
			delay();
		}
		TMR1IF	= 0;
	}
}

void delay()
{
	for(j=0;j<1000;j++);
}