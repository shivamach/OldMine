#include<stdio.h>
#include<stdlib.h>
#include<strings.h>

int main()
{
    char *alpha,*safe;
    int count;

    alpha = malloc(26*sizeof(char));
    if(alpha == NULL)
    {
        puts("memory allocation failed");
    }
    else{
    safe = alpha;
    for(count = 65;count <=90;count++)
    {  
        *safe = count;
        
        //printf("%c",*safe);
        safe++;
    }
    *safe = '\0'; //adding string end character so that puts can be also used instead of printf
    }
    puts(alpha);
    free(alpha);
    //memory allocated by malloc after used should be freed
    return 0;
}