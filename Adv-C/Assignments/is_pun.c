#include <stdio.h>

int my_ispunct(int character);

int main()
{
    char ch;
    int ret;
    
    printf("Enter the character:");
    scanf("%c", &ch);
    
    ret = my_ispunct(ch);
    ret ? printf("Entered character is punctuation character") : printf("Entered character is not punctuation character");
}
int my_ispunct(int character)
{
    return ((character >= 33 && character <= 47 ));
}
