#include<iostream>
using namespace std;
void passby_value(int array[],int size);//array[] also acts like a pointer
void passby_address(int *array,int size);
void changesinglevalue(int i);
void changebyref(int *i);
int main(){
    int i=0;
    //here we pass an array by value and by reference and change their values in function
    //but print them in main without using return statements
    int array[5] = {1,2,3,4,5};
    int array2[4]= {4,4,4,4};
    passby_value(array,5);
    passby_address(array2,4);
    cout<<"arrays are gonna be replaced with zeros as test"<<endl<<"array on passbyvalue";
    cout<<endl;
    for(i=0;i<5;i++)
    cout<<array[i]<<endl;
    cout<<"array of all fours on passby ref"<<endl;
    for(i=0;i<4;i++)
    cout<<array2[i]<<endl;
   
    cout<<"initial value of i = "<<i<<endl;
    changesinglevalue(i);
    cout<<"value of i post passing by value = "<<i<<endl;
    changebyref(&i);
    cout<<"value of i post passing by ref = "<<i<<endl;
    cout<<"we can see difference and stuff caused by different way of passing shit"<<endl;
    return 0;
}

void passby_value(int array[],int size){
   int i;
   for(i=0;i<size;i++)
   array[i] = 0;
}

void passby_address(int *array,int size)
{
    int i;
    for(i=0;i<=size;i++)
    *(array+i) = 0;
}

void changesinglevalue(int i)
{
    i = 69;
}

void changebyref(int *i)
{
    *i = 69;
}