/************************************************************************************************************************************************************
Title		: Convert the integer value to character and vice versa 
Author		: MAHABOOB BASHA S.R
Date		: 16-12-2021
description	: Converting the given string into integer and integer into character like a built-in function atoi and itoa
 ************************************************************************************************************************************************************/

#include <stdio.h>

int getword(char *str);

int main()
{
        int len = 0;
	    char str[100];

		printf("Enter the string : ");
		scanf("%[^\n]", str);

		len = getword(str);

        printf("You entered %s and the length is %d\n", str, len);
}

int getword(char *str)
{
	int count = 0;

	//validate till null character
	while(*str != '\0')
	{
		//increment the count till space
		if ((*str) == ' ') 
		{
			break;
		}
		else 
		{
			count++;
			str++;
		}
	}
	return count;
}
