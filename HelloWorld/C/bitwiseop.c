#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
//Complete the following function.
//n is till what the set goes to, n max can be 1000, and k the max bound value should be below n
int all_possible(int n);//prototype
void sort_array_ascending(int *array,int size);
void calculate_the_maximum(int n,int k);
void print_less_than(int *sortedarray,int maxval,int size);

   //max value of each table just less than k is found and printed,simple here
int main() {
    int n, k;
    printf("enter n and k values\n");
    scanf("%d\n%d",&n,&k);//taking n and k values from user
    if(n>=2&&n<=1000)
    {
        if(k>=2&&k<=n)
        calculate_the_maximum(n,k);
        //else printf("value entered for k is not in range\n");
    }
    //else
   // printf('value entered for n is not in range of[2,1000]\n');
    
 
    return 0;
}
/*approach to problem - list out all possible values of a&b, a|b , a^b and sort them in inc
order and then compare with k and give values - more computational and longer method
other way is to find some mathematical logic to make the code smarter, first idea is quite 
mechanichal*/
int all_possible(int n){
     int max=0;
    int c=0;
//given n, max no of values in and consisting of a&b , a,b belonging to S(1,n-1) is sum 1+2+..+n-1
//hence doing that here and returning the max value   
  for(c=n-1;c>0;c--)
  {
      max = max + c;
     // printf("%d\n",max);
  }
    
    return max;
  }
void sort_array_ascending(int *array,int size){
     int *pointer,c,d,mid;
      pointer = array;
      for(c=0;c<=size;c++)
      {
          for(d=c+1;d<=size-1;d++)
          {
              if(*(pointer+c)>*(pointer+d))
              {
                mid = *(pointer+c);
                *(pointer+c) = *(pointer+d);
                *(pointer+d) = mid ; //exchanging if not in ascending
              }     
          }
      }

  }
  void calculate_the_maximum(int n, int k) { //fucntion to calculate the max possible val
   int S[n-1];
   int max,ta;
   int tb = 0;
   int tm = 0;
   //filling S values
   for(tb=0;tb<=n-1;tb++)
   S[tb] = tb + 1;
   max = all_possible(n); //this function given n gives total no of elements expected in and,or,xor
   /*printf("max value is %d\n",max);*/
   int and[max],or[max],xor[max];
   
   //filling up arrays with all possibilities
   for(ta=0;ta<=n-2;ta++)//here we take input of all and,or,xor values and group them in arrays
 {
       for(tb=ta+1;tb<=n-1;tb++)
       {
           and[tm] = S[ta]&S[tb];
           or[tm] = S[ta]|S[tb];
           xor[tm] = S[ta]^S[tb];
           tm++;
       }
   }
  /* printf("and\tor\txor\n");
   for(tb=0;tb<=max-1;tb++)
     { 
       printf("%d\t%d\t%d\n",and[tb],or[tb],xor[tb]);
   }*/
   sort_array_ascending(and,max);
   sort_array_ascending(or,max);
   sort_array_ascending(xor,max);

   print_less_than(and,k,max);
   print_less_than(or,k,max);
   print_less_than(xor,k,max);
  }
void print_less_than(int *sortedarray,int maxval,int size){
    int ta,*pointer;
    pointer = sortedarray;
    
    for(ta=0;ta<=size-1;ta++){
        if(*pointer>=maxval)
        {
            printf("not present\n");
            ta = size;
        }
       else if(*pointer<maxval&&*(pointer+ta)>=maxval)
       {
           printf("%d\n",*(pointer+ta-1));
           ta = size;
       }else if(*(pointer+size)<maxval)
       {printf("%d\n",*(pointer+size));
       ta = size;} 
    }
}
