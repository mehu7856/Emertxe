/**********************************************************************************************
	Name: Mahaboob basha S.R 
	Date: 30-11-21 
	Description: The sieve of Eratosthenes is one of the most efficient ways to find all of the smaller primes.
	             It is named after Eratosthenes of Cyrene, a Greek mathematician.
	Sample input: 20
	Sample output: 2, 3, 5, 7, 11, 13, 17, 19
***********************************************************************************************/

#include<stdio.h>
int main()
{
	//declaration of the variables
	int limit,i,power=1,j;
	for(i=0;i<20;i++)
	{
		power=power*2;
	}
	//read the limit value
	printf("Enter the value of 'n' : ");
	scanf("%d", &limit);
	//check the 2^20 vlaue
	if(1 < limit < power)
	{
		//check the value is positive or negative.
		if(limit > 1)
		{
			//instlize arraylimt
			int array[limit];
			//initialize array values with 0.
			for(i=0; i< limit; i++)
			{
				array[i]=0;
			}
			//index is divisible by other index value.
			for (i=2;i<=limit;i++)
			{
				for(j=2;j<=limit;j++)
				{
					if ((j%i == 0 & i != j))
					{
						array[j]=i;
					}
				}
			}
			printf("The primes less than or equal to %d are",limit);
			//prints all the index if the value is 0 
			for(i=2;i<=limit;i++)
			{
				if (array[i]==0)
				{
					printf(" %d",i);
				}
			}
			
		}
		else
		{
			printf("Please enter a positive number which is > 1\n");
		}
	}
	else
	{
		printf("Out of range\n");
	}
	return 0;
}
