/*
	Name: Mahaboob basha S.R 
	Date: 24-11-21
	Description: AP = In mathematics, an arithmetic progression (AP) or arithmetic sequence is a sequence of numbers such that the difference 
	                  between the consecutive terms is constant.
	             GP = mathematics, a geometric progression, also known as a geometric sequence, is a sequence of numbers where each term after 
				      the first is found by multiplying the previous one by a fixed, non-zero number called the common ratio.
				 HP = In mathematics, a harmonic progression (or harmonic sequence) is a progression formed by taking the reciprocals of an arithmetic progression.
    Sample input : 2 3  5
    Sample output:  A.P = 2 5 8 11 14
                    G.P = 2 6 18 54 162
                    H.P = 0.058824 0.200000 0.125000 0.090909 0.071429
*/
#include<stdio.h>
int main()
{
	//declare a varibles
	int AP,GP,firstnum,ratio,n,i,x;
	float hp;
	printf("Enter the First Number 'A':");
	scanf("%d", &firstnum);
	printf("Enter the Common Difference / Ratio 'R':");
	scanf("%d", &ratio);
	printf("Enter the number of terms 'N':");
	scanf("%d", &n);
	//if -ve give shows invalid input
	if(n < 0)
	{
		printf("Invalid input\n");
	}
	if (n > 0)
	{
		printf("\n AP = ");
		x=firstnum;
		for(i=1;i<=n;i++)
		{
			printf("%d, ", x);
			//ap=firstnum+differnce
			AP=x+ratio;
			x=AP;
			//print the AP series
		}
		printf("\n GP = ");
		x=firstnum;
		for(i=1;i<=n;i++)
		{
			printf("%d, ", x);
			//GP=firstnum*differnce
			GP=x*ratio;
			x=GP;
			//print the GP series
		}
		printf("\n HP = ");
		AP=firstnum;
		for(i=1;i<=n;i++)
		{
			//hp = 1/AP series
			hp=(float) 1/AP;
			printf("%f, ", hp);
			AP=AP+ratio;
			x=AP;
			
			//print the HP series
			
		}
	}
	return 0;
	
}

