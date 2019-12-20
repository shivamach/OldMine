#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() {

    int n,i;
    int k = 0;
        scanf("%d",&n);
    int array[n];
    for(i=0;i<n;i++)
        {scanf("%d",&array[i]);}
    
    for(i=0;i<n;i++)
        {k = k + array[i];}
    printf("%d\n",k);
    return 0;
}