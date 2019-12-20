#include<stdio.h>
unsigned char a;
int main()
{
    int i;
    a = 0;
    printf("ASCII VALUES TABLE\n");
    printf("int\tint0x\tchar\n");
    for(i=0;i<=255;i++)
    {
        printf("%d\t%x\t'%c'\n",a,a,a);
        a = a+1;

    }
}