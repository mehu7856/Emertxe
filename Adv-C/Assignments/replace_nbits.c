/**************************************************************************************************************************************************
	Name: MAHABOOB BASHA S.R
	Date: 28-11-21 20:12
	Description:  replace 'n' bits of a given number
	Sample input: a. Read number num from user. = 10
                  b. Read number n from user.  = 3
                  c. Read number val from user = 12
    Sample output:Result = 12
                    10 -> 0 0 0 0 1 0 1 0

                    12 -> 0 0 0 0 1 1 0 0 
*****************************************************************************************************************************************************/

#include<stdio.h>
int replace(int num, int n, int val);
int main()
{
	//Declare the varibles
	int num,n,val;
	int returnedvalue;
	// Read number num from user.
	printf("Enter the number: ");
	scanf("%d", &num);
	// Read number n from user.
	printf("Enter number of bits: ");
	scanf("%d", &n);
	//Read number val from user
	printf("Enter the value: ");
	scanf("%d", &val);
	//returnvalue=replace(num,n,val)
	returnedvalue = replace(num, n, val);
	//return value of replace bit
    printf("Result = %d", returnedvalue );
	
}
//function to return the replace the n-bits
int replace(int num, int n, int val)
{  	  
	return (val & ~((~0<<n)))|(num & ~0 << n);
	//n number of bits from LSB of val.
}
