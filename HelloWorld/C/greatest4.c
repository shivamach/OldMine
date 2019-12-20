#include<stdio.h>
int main()
{/*use a function to find greatest of four numbers given as input*/
  int a,b,c,d;
  printf("enter four numbres\n");
  scanf("%d\n%d\n%d\n%d",&a,&b,&c,&d); //four numbers input a,b,c,d
  int greatest_of_four(int a,int b,int c,int d); //fucntion prototype
  printf("%d is the greatest of given four numbers\n",greatest_of_four(a,b,c,d));
  //calling the function from inside printf
  return 0;
}
int greatest_of_four(int a,int b,int c,int d)
{
  int ans;
  if(a>b&&a>c&&a>d)//hopefully and condition works here
  {return a;}
  else if(b>c&&b>d)
  return b;
  else if(c>d)
  return c;
  else
  return d;
}
