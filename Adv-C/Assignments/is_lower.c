/********************************************************************************************
*   Name : MAHABOOB BASHA. S.R
*   Date : 05-12-2021
*   Description : islower() - checks for a lower case alphabet whether entered character is between 'a' to 'z'.
*   Sample input : 
                    Enter the character: a
*   Sampl output :
                    Entered character is lower case alphabet
*/
#include<stdio.h>
int is_lower(int character );
int main()
{
    //Declare a varibles
    char character;
    int res;
    //Read a character from user
    printf("Enter the character: ");
    scanf("%c", &character);
    res=is_lower(character);
    //check the validation if user enter a character or not
    res ? printf("Entered character is lower case alphabet") : printf("Entered character is not lower case alphabet");
    
    return res;
}
//Function checks for the character
int is_lower(int character)
{
    //Check the condition if it is lower character or not
    return ((character >= 'a' && character <= 'z' ));
}