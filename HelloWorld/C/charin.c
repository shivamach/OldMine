#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main()
/*this code here is supposed to show how to take input of a char, a word and a
sentence, and how their scanfs are different and interact with eachother.
loop up some theory for hackerrank.com*/
{char ch,s[10],sen[50];
 int i;
 printf("first enter a letter,then a word and then a sentence\n");
 scanf("%c",&ch);
 scanf("%s",&s);
  scanf("\n");
 scanf("%[^\n]%*c",&sen);
 printf("%c\n",ch);
 printf("%s\n",s);
 printf("%s\n",sen);

    return 0;
}
/*notes:You can take a string as input in C using scanf(“%s”, s).
But, it accepts string only until it finds the first space.

In order to take a line as input, you can use scanf("%[^\n]%*c", s);
where is defined as char s[MAX_LEN] where MAX MAX_LEN is the maximum size of .
Here, [] is the scanset character. ^
\n stands for taking input until a newline isn't encountered. Then, with this %*c,
it reads the newline
character and here, the used * indicates that this newline character is discarded.
Note: After inputting the character and the string, inputting the sentence by
the above mentioned statement won't work. This is because, at the end of each line,
a new line character (\n) is present.
 So, the statement: scanf("%[^\n]%*c", s); will not work because
 the last statement will read a newline character
 from the previous line. This can be handled in a variety of ways and one of them being: scanf("\n"); before the last statement. */
