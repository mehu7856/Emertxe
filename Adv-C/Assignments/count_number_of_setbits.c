/**************************************************************************************************************************************************
* 	Name:Mahaboob basha S.R  
* 	Date: 25-11-21 13:57
* 	Description :  Read a number from the user. Check number of set bits in a given number. If number of set bits is odd,
				           then Bit parity is odd. Similarly, If number of set bits is even, then Bit parity is even.
*  Sample input : 7
*	 Sample output: Number of set bits = 3
                   Bit parity is Odd 
**************************************************************************************************************************************************/

#include <stdio.h>
 
int main()
{
	
    int number;
    int count = 0;
    printf("Enter the number :");
    scanf("%d", &number);
    while (number != 0)
    {
    	if (number & 1 == 1)
    	{
    		count++;
		}
		number = number >> 1;
    } 
    printf("Number of set bits = %d\n", count);
    if (count & 1 == 1 )
    {
        printf("Bit parity is Odd\n");
    }
    else
    {
        printf("Bit parity is Even\n");
    }
    return 0;
}
