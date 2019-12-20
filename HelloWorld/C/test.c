/*#include<stdio.h>
void sort_array_ascending(int *array,int size);
int main()
{   
   int k,ta,tb,and[10],or[10],xor[10];
   int tm=0;
   int S[5] = {1,4,3,5,2};
   int n = 5;
   int max = 10;
   sort_array_ascending(S,5);
   for(ta=0;ta<=n-2;ta++)
   {
       for(tb=ta+1;tb<=n-1;tb++)
       {
           and[tm] = S[ta] &  S[tb];
           or[tm] = S[ta] | S[tb];
           xor[tm] = S[ta]^S[tb];
           tm++;
       }
   }
   for(k=0;k<=max-1;k++)
   printf("%d\t%d\t%d\n",and[k],or[k],xor[k]);

   return 0;
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

  }*/
  //arrays are arranged in asending order using this function
   /*for(ta=0;ta<=max-1;ta++)
   { // ta = max - 1 terminates for loop and ends printing right then and there
     //got to make this printing more efficient
       if(and[0]>=k)
  {printf("0\n");
  ta = max-1;}
  else if(and[0]<k&&and[ta]>=k)
  {printf("%d\n",and[ta-1]);
  ta = max -1;}
  else if(and[max-1]<k)
  {printf("%d\n",and[max-1]);
  ta =max-1;}}
//if largest element aint bigger than k then print that, otherwise check when an element is bigger
//than k and print that
for(ta=0;ta<=max-1;ta++)
   { // ta = max - 1 terminates for loop and ends printing right then and there
     //got to make this printing more efficient
       if(or[0]>=k)
  {printf("0\n");
  ta = max-1;}
  else if(or[0]<k&&or[ta]>=k)
  {printf("%d\n",or[ta-1]);
  ta = max -1;}
  else if(or[max-1]<k)
  {printf("%d\n",or[max-1]);
  ta =max-1;}}
       for(ta=0;ta<=max-1;ta++)
   { // ta = max - 1 terminates for loop and ends printing right then and there
     //got to make this printing more efficient
      if(xor[0]>=k)
  {printf("0\n");
  ta = max-1;}
  else if(xor[0]<k&&xor[ta]>=k)
  {printf("%d\n",xor[ta-1]);
  ta = max -1;}
  else if(xor[max-1]<k)
  {printf("%d\n",xor[max-1]);
  ta =max-1;}
       }*/
