#include<stdio.h>
//this code is to perform convolution
float x[],h[];
int a,b,i,j;
int main()
{
  printf("enter the size of x[n] and h[n]\n");
  scanf("%f\n%f",&a,&b);//asking user for size of x and h
  printf("enter x[n]\n");
  for(i=0;i<a;i++) //using for loop to fill the x array and then h
  {scanf("%f",&x[i]);
   printf("\n");}
   printf("enter h[n]\n");
   for(i=0;i<a;i++) //using for loop to fill the x array and then h
   {scanf("%f",&h[i]);
    printf("\n");}
  //temporary check to see if values are coming or not
}
