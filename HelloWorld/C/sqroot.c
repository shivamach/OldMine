/*this code is to find squareroot of a number without using math.h
squareroot option.This code only works for numbers greater than 1,need to find an
alternate method for numbers between 0 and 1*/
#include<stdio.h>
int main()
{
  float num,i,check;
  printf("Please enter the number whose square root you wish to find,the number should be greater than 1\n\n");
  //later try to write code so that the condition on the number thats entered is lifted
  scanf("%f",&num);
  i = 0.999999;
  do {
    i = i + 0.000001;
    check = i*i;
    //printf("current value of i is %f",i);

  /* the code logic is symbol,we take advanteage of the least count of float, and
  we keep adding i wit 10^-6 until i^2 is equal to number enteref by the user
  when it is equal,that means that i at that iteration is our nSquareroot
  this method will be hella slow for really huge numbers
  we can introduce a printf for each iteration in do while loop if one would like*/
  } while(check!=num);
  printf("\nSquareroot of the number %f is %f\n",num,i);
  return 0;
}
