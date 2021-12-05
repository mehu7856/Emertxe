/*************************************************************************************************
	Name: MAHABOOB BASHA S.R 
	Date: 02-12-21 22:27
	Description: c-type library functions check whether ch, which must have the value of an unsigned char or EOF,
	              falls into a certain character class according to the current locale.
	Sample input :Enter a character: a
    Sample output :  The character 'a' is an alnum character.
***********************************************************************************************/
#include<stdio.h>
int is_alnum(char character);
int main()
{
	//Declare a varibles
	char character;
	//Read a character from user
	printf("Enter a character: ");
	scanf("%c", &character);
	//check the validation if user enter a character or not
	is_alnum(character) ? printf("Entered character is alphanumeric character") : printf(" Entered character is not alphanumeric character");
	return 0;
}
//Function chaecks for the character
int is_alnum(char character)
{
	return ((character >= 'a' && character <= 'z') || (character >= 'A' && character <= 'Z') || (character >= '0' && character <= '9'));
}
