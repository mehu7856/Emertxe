/*   Name : MAHABOOB BASHA S.R
*    Date  : 07-12-2021
*    Description : implement Circular right shift
*    Sample input : Enter num: 12
                    Enter n : 3
*    Sampleoutput:
                    Result : 10000000 00000000 00000000 00000001
*/
#include<stdio.h>
unsigned int circular_right(int num,int n);
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
    value = circular_right(num,n);
    printf("\nResult is = ");
    print_bits(value);
    //Print the new number.
}
//Return the new number from the function.
unsigned int circular_right(int num,int n)
{
    return ((num & ((1 << n) - 1)) << (32 - n)) | (num >> n);
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
        bit == 0? printf("0"): printf("1");
    }
    

}

