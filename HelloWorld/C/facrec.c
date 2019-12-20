#include<stdio.h>
int main()
{
  /*this is the standard recursion code for functions*/
  int n,r,nCr,val;
  unsigned int fact(unsigned int n);
  unsigned int ncr(unsigned int n,unsigned int r);
  //factorial exists for only int numbers
  printf("Enter the value(should be below eight)\n");
  scanf("%d",&n);
  if (n<=8)
  {val = fact(n);
  printf("the factorial values is %d\n",val);
  printf("Enter values of n and r to find ncr\n");
  scanf("%d\n%d",&n,&r);
  nCr = ncr(n,r);
  //demonstrating both direct and indirect recursion
  printf("the ncr value is %d\n",nCr);}
  else
  {printf("Invalid input\n");}
  return 0;
}
unsigned int fact(unsigned int n)
{if (n==1)
  return 1;
  else
  return n*fact(n-1);

}
unsigned int ncr(unsigned int n,unsigned int r)
{
  int k,mid;
  k = fact(n)/(fact(r)*fact(n-r));
  return k;
}
