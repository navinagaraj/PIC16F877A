/*****************************************/
/* Author	    : Naveen Kumar .N        */
/* Date		    : 20-aug-2019            */
/* Filename	    : TUP.c                  */
/* Description	: TUP-Timer-UART-program */
/*****************************************/

/* Included header file */
#include <htc.h>
#define _XTL_FREQ 2000000
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_OFF & BOREN_ON & LVP_OFF);

/* Global variable definitions */
int i = 1;


/* function definitions */
void uart_tx(unsigned char val);
void print_uart(unsigned char *str);
unsigned char text_uart[]="I am Alive = ";
unsigned char text_uart2[]="  Second\n\r";
void uart_init(void);
void call(int);
void delay();


void delay()
{
	for(int k = 0; k<5; k++)
	{
	    TMR1CS  = 0;                        //WE SELECT INTERNAL CLOCK SOURCE IN TMR1
        T1CKPS1 = 1;                        //WE NEED TO SELECT PREESCALER 1 AS A 1 BECOUS WE NEED (1:16) FOR SUFFICENT
        T1CKPS0 = 1;                        //WE NEED TO SELECT PREESCALER 0 AS A 1 BECOUS WE NEED (1:16) FOR SUFFICENT
        TMR1H   = 0X0B;                     //TMR1H VALUE IS USED TO WHARE IT START
        TMR1L   = 0XDB;                     //TMR1L VALUE IS USED TO WHARE IT END
        TMR1ON  = 1;                        //WE NEED TO TMR1ON TO START THE PROCESS
        while(!TMR1IF);                     //WHEN THE TIMER COMPLET THE ONE FULL PROCESS THAT TIMEIF=(INTERUPT FLAG) APPEAR WE NEED TO CLEAR THE FLAG
        TMR1IF  = 0;                        //IT MAKE TMR1IF=0 MEANS IF HA MADE AGAIN ZERO(0).THEN IT STARTED AGAIN CYCLE.
	}
}

int main()
{
	uart_init();
	TRISB7 = 0;
	while(1)
	{	
		delay();
		PORTB = 0XFF;
		delay();
		PORTB = 0;
		print_uart(text_uart);
		call(i);
		print_uart(text_uart2);
		i++;
	}
}


void uart_tx(unsigned char val)
{
	TXREG = val;
	while(TXIF == 0);
	TXIF  = 0;
}

void uart_init(void)
{
	TRISC6	= 0;					//TRISC6 MAKE AS OUTPUT.
	TRISC7	= 1;					//TRISC7 MAKE AS INPUT.
	TXSTA	= 0X00;					//TRANSMIT STATUS AND CONTROL REGISTER.
	RCSTA	= 0X00;					//RECEIVE STATUS AND CONTROL REGISTER.
	SPBRG	= 31;					//BAUD RATES FOR ASYNCHRONOUS MODE
	TXEN	= 1;					//TRANSMIT ENABLE BIT.
	SPEN	= 1;  					//Serial port enabled (configures RC7/RX/DT and RC6/TX/CK pins as serial port pins).
	TXIF	= 0;					//TRANSMIT INTERUPT FLAG.
	RCIF	= 0;					//RECIVER INTERUPT FLAG.
}

void print_uart(unsigned char *str)
{
	while(*str)
	{
		uart_tx(*str);
		str++;
	}
}

void call(int i)
{
	int data,j,count=0,arr[30];
	data = i;
	while(data != 0)
	{
		j = data%10;
		arr[count] = j;
		data = data/10;
		count++;
	}
	count = count-1;
	for( ;count!=-1; )
	{
			uart_tx((arr[count]+48));
			count--;
	}
}	