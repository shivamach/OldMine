#include<stdio.h>
#include<math.h>
int main()
{
  float c,f;
  int check;
  float kelvin;
printf("This code is for conveting temperature from celsius to\
 Fahrenheit and viceversa (upto two decimal places)\n");
printf("enter 0 for celsius to fahrenheit\n1 for fahrenheit to celsius conversion\n");
scanf("%d",&check);
printf("\n");
//for some reason putting scanf("%d\n",&check); was causing issues,better to do \n seperately in printf
if(check==0)
 {
   printf("enter temperature in celsius\n");//here for some reason while executing scanf is happening before printf wtf
   scanf("%f",&c);
   printf("\n");    //\n replaced here from scanf to printf
   f = 32 + (c*9)/5;
   printf("%.3f celsius is equal to %.2f fahrenheit\n",c,f);
   kelvin = c + 273;
   printf("which is also equal to %.2f kelvin\n",kelvin);
 }else{    //replacing all scanf \n with printf("\n"); and the code works flawlessly
   printf("enter temperature in fahrenheit\n"); //need to read more about fflush and buffer wow
   scanf("%f",&f);
   printf("\n");   // scanf to printf replacing the \n thing.figure out why the fflush(stdout); thing didnt works
   c = (f-32)*5/9;
   printf("%.3f fahrenheit is equal to %.2f celsius\n",f,c);
   kelvin = c +273;
   printf("which is also equal to %.2f kelvin\n",kelvin);

 }
 return 0;
}
/*this code asks user what temperature conversion he or she wants to try
takes input accordingly either fahrenheit ot celsius , converts it to other and
then prints the converted value an the same value in kelvin  too
basic code*/
