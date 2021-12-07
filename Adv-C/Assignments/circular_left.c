/*   Name : MAHABOOB BASHA S.R
*    Date  : 07-12-2021
*    Description : implement Circular left shift
*    Sample input : Enter num: 12
                    Enter n : 3
*    Sampleoutput:
                    Result :  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0
*/
#include<stdio.h>
unsigned int circular_left(int num,int n);
unsigned int print_bits(int value);
int main()
{
    //Declare the varibles
    int num,n,value;
    //Read a number num from user.
    printf("Enter num: ");
    scanf("%d", &num);
    //Read a number n from user.
    printf("Enter n: ");
    scanf("%d", &n);
    value = circular_left(num,n);
    printf("\nResult is = ");
    print_bits(value);
    //Print the new number.
}
//Return the new number from the function.
unsigned int circular_left(int num,int n)
{
    return (num << n) | ((num >> (0x1F & (32 + ~n + 1))) & ~(0xFFFFFFFF << n));
    //While shifting the shifted bits should get replaced at the alternate end

}
unsigned int print_bits(int value)
{
    int i, bit, mask;
    
    // Print the n bit binary representation of num 
    for ( i = 31 ; i >= 0; i-- )
    {
        mask = 1<<i;
        bit = mask & value;
        /* Print bits */
        bit == 0? printf(" 0"): printf(" 1");
    }
    

}

