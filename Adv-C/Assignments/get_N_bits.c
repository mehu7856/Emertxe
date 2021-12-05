/***************************************************************************************************************************************************
	Name: MAHABOOB BASHA S.R 
	Date: 27-11-21 21:40
	Description:   get_nbits
	               If num is 10 and n is 2,
                 10 -> 0 0 0 0 1 0 1 0
                 Take 2 bits from LSB end of 10 (1 0) 
  Sample input :  Enter the number: 10
                  Enter number of bits: 3
  Sample output:
                  Result = 2
*******************************************************************************************************************************************************/

#include<stdio.h>
int get_nbits(int, int);
int main()
{
	//Declare the varibles
	int num,n;
	int value;
	//Read number num from user.
	printf("Enter the number: ");
	scanf("%d", &num);
	//Read number n from user.
	printf("Enter number of bits: ");
	scanf("%d", &n);
	value=get_nbits(num,n);
	printf("Result = %d", value);
	//Return new value
	
}
int get_nbits(int num, int n)
{
	return (num & ~(~0<<n));
	//Fetch n number of bits from LSB end of val and  in the last n bits of num.
}
