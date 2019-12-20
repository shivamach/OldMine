#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>

int main()
{
    int n;
    scanf("%d",&n);
    //number has to be five digits
    
    n = n%10 + (n/10)%10 + (n/100)%10 + (n/1000)%10 + (n/10000)%10;
    
    printf("num = %d\n",n);
    return 0;
}