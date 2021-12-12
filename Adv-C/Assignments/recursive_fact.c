/***************************************************************************************************************
*   Name : MAHABOOB BASHA S.R
*   Date : 12-12-2021
*   Description   :   Read number n from user.Validate the given numberCall main function from main for calculating factorial.
                      Prompt for continue option without using loop.
*   Sample input  :   5
*   Sample output :   Factorial of the given number is 120
****************************************************************************************************************/
#include<stdio.h>
int main()
{
    static int num;
    static unsigned long long int fact = 1;
    int flag;
    if (fact == 1)
    {
        printf("Enter the value of N :");
        flag=scanf("%d",&num);
        if(flag != 1 || num < 0)
        {
            printf("Invalid Input");
            return 0;
        } 
        fact = 1;
    }
    if(num)
    {
        fact *= num--;
        main();
        return fact;
    }
    printf("Factorial of the given number is %lld",fact);
    fact = 0;
    return 0;
}