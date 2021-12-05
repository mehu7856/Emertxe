/*--------------------------------------------------------------------------
*	Name: Mahaboob basha S.R 
*	Date: 16-11-21 21:14
*	Description: check whether a given number is perfect or not
*	Sample input: 6
*	sample output:perfect number 
----------------------------------------------------------------------------*/

#include<stdio.h>
int main()
{
	//Declare varibles
	int i,num,Remainder,sum=0;
	//Ask user to enter a number
	printf("Enter a number:");
	scanf("%d", &num);
	//if enterd number is -ve shows error
	if (num < 0)
	{
		printf("Error : Invalid Input, Enter only positive number\n");
	}
	//if entrd number is +ve then shows the perfect or not 
	else if (num > 0)
	{
		for (i=1;i<num;i++)
		{
			Remainder=num%i;
			if (Remainder==0)
			{
				sum=sum+i;
			}
		}
		//if sum equal to number then the perfect otherwise not perfect
		if (sum == num)
		{
			printf("Yes, entered number is perfect number\n");
		}
		else
		{
			printf("No, entered number is not a perfect number\n");
		}
	}
	return 0;
}