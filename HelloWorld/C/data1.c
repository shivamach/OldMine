#include<stdio.h>
int main()
{
  int i = 4;
  double d = 4.0;
  char s[]= "HackerRank";
  int i2;
  double d2;
  char s2[100]; /*in this code you are supposed to add numbers with scanned numbers and print them on new lines*/
  //join new input taken strings too
  scanf("%d\n",&i2);
  scanf("%lf\n",&d2);
  scanf("%[^\n]%*c",s2);
  i = i + i2;
  printf("%d\n",i);
  d = d + d2;
  printf("%.1f\n",d);
  printf("%s %s\n",s,s2);
  /*printing the double sum upto one decimal place*/

  return 0;
}
/*things learned here are that double or float both are printed as
a double so for printf %f is used for both float and double.
but while scanning a pointer is passed so we need diff stuff for double s
float hence double is %lf while float is %f for scanf
thing two learned that to round up upto n decimal places while printing use
printf("%.nf",float_or_double_num);
which will round the float or double upto n decimal places

again here we revise the method to take a string input with spaces
write this down in book*/
