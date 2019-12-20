#include<stdio.h>
//this code here takes number of days as input and gives out the same value in years
int main()
{ int days,year,week,days2;
  printf("enter the number of days\n");
  //it is assumed that the year is not a leap year
  scanf("%d",&days);
  year = days/365;
  week = (days%365)/7;
  days2 = days - (year*365) - (week*7);
  printf("%d nnumber of days is equal to\n%d years\n%d weeks and\n%d days\n",days,year,week,days2);
  return 0;
}
