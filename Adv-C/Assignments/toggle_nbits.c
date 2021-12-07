/**************************************************************************************************************************************************
*	Name: MAHABOOB BASHA S.R
*	Date: 02-12-21 19:36
*	Description:      toggle 'n' bits from given position of a number
*	Sample input :    Enter the number: 10
                    Enter number of bits: 3
                    Enter the pos: 5  
*	sample output :   Result = 50 
*************************************************************************************************************************************************/

#include<stdio.h>
int toggle(int num, int n, int pos);
int main()
{
	//Declare a varibles
	int num,n,pos,res=0;
	// Read number num from user.
	printf("Enter the number: ");
	scanf("%d", &num);
	//Read number n from user.
	printf("Enter number of bits: ");
	scanf("%d", &n);
	//Read number position from user.
	printf("Enter the pos: ");
	scanf("%d", &pos);
	res=toggle(num,n,pos);
	//Return the new value
	printf("Result = %d",res);
}
//function to toggle the n_bits from the position
int toggle(int num, int n, int pos)
{
	return	(num ^ (((1 << n) - 1) << pos - n + 1));
}
