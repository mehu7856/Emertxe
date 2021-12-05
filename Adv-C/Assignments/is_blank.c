/*********************************************************************************************
	Name: MAHABOOB BASHA S.R
	Date: 02-12-21 22:27
	Description: isblank() - checks for a blank character; that is, a space or a tab.
	Smaple input :
	                Enter the character: a
	Sample output :
                    The character 'a' is not a blank character.
************************************************************************************************/
#include<stdio.h>
int is_blank(char character);
int main()
{
    //Declare a varibles
	char character;
	int res;
	//Read a character from user
	printf("Enter a character: ");
	scanf("%c", &character);
	//check the validation if character is blank or not
	is_blank(character) ? printf("Entered character is a blank character") : printf("Entered character is not blank character");
	res=is_blank(character);
	
}
//Function chaecks for the blank
int is_blank(char character)
{
    //Check the condition if character is blank or not
	return ((character == ' '|| character == '\t' ));
}
