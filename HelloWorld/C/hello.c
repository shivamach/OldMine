#include<stdio.h>
int main()
{
	char instring[150];
	scanf("%[^\n]%*c",instring); /*taking string input*/
	printf("Hello World.\n");
	printf("%s\n!",instring);
	return 0;
}
