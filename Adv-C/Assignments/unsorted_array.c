/**************************************************************************************************************
*   Name : MAHABOOB BASHA S.R
*   Date : 04-12-2021
*   Description : In probability theory and statistics, a median is described as the number separating the higher half of a sample, a population, or a probability distribution, from the lower half.
                  The median of a finite list of numbers can be found by arranging all the numbers from lowest value to highest value and picking the middle one.
*   Sample input :
                     Enter the elements one by one for Array A: 3 2 8 5 4
                     Enter the elements one by one for Array B: 12 3 7 8 5
*   Sample output : 
                    Median of array1 : 4
                    Median of array2 : 7
                    Median of both arrays : 5.5 
***************************************************************************************************************/
#include<stdio.h>
int main()
{
	int n,n1,i,j,temp;
	double median,median1 ,final_median;
	printf("\nEnter the 'n' value for Array A: ");
	scanf("%d",&n);
	printf("\nEnter the 'n' value for Array B: ");
	scanf("%d",&n1);
	printf("\n");
	
	if (n < 11)
	{
		int array1[n];
		printf("\nEnter the elements one by one for Array A: ");
		for(i=0;i<n;i++)
		{
			scanf("%d",&array1[i]);
		}
		for (i=0;i < n ;i++)
		{
			for (j=i; j < n ;j++)
			{
				if (array1[j] < array1[i])
				{
					temp=array1[i];
					array1[i]=array1[j];
					array1[j]=temp;
				}
			}
		}
		if ((n % 2 ) != 0)
		{
			median= array1[n/2];
		}
		else
		{
			median = (double)(array1[(sizeof(array1)/sizeof(array1[0]))/2] + array1[(sizeof(array1)/ sizeof(array1[0]))/2-1])/2;
		}
	}
	else
	{
		printf("Out of range");
	}
	
    if (n1 < 11)
	{
		int array2[n1];
		printf("\nEnter the elements one by one for Array B: ");
		for(i=0;i<n1;i++)
		{
			scanf("%d",&array2[i]);
		}
		for (i=0;i < n1 ;i++)
		{
			for (j=i; j < n1 ;j++)
			{
				if (array2[j] < array2[i])
				{
					temp=array2[i];
					array2[i]=array2[j];
					array2[j]=temp;
				}
			}
		}
		printf("\n");
		if ((n1 % 2 ) != 0)
		{
			median1=(double)(array2[sizeof(array2)/ sizeof(array2[0])/2]);
		}
		else
		{
			median1 = (double)(array2[(sizeof(array2)/sizeof(array2[0]))/2] + array2[(sizeof(array2)/ sizeof(array2[0]))/2-1])/2;
		}
		printf("\nMedian of Array1: %g",median);
		printf("\nMedian of Array2: %g",median1);
		
	}
	else
	{
		printf("Out of range");
	}
	final_median= (median + median1 )/ 2;
	printf("\nAverage of 2 medians = %g  ",final_median);
	return 0;
}