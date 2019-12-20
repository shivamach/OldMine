#include<iostream>

using namespace std;

void dispbuf(char *buf);
void pop();
void push();

char buf[10] = {'a','b','c','d',' ',' ',' ',' ',' ',' '};
char *fr,*endd;
//starting ka daal maal


int main(){
fr = buf;
endd = buf;
endd = endd + 4;
//endd = &buf[3];
dispbuf(buf);
//queue array suppposed to be circular
int input;

while(1){
cin>>input;
if(input == 1)
pop();//denqueue
else if(input == 2)
push();//enqueue
else if(input == 0)
return 0;
}



/*
push();
push();
push();
push();
push();
push();
pop();
//dispbuf(buf);
push();
pop();
//dispbuf(buf);
pop();
//dispbuf(buf);
push();*/

return 0;
}

void dispbuf(char *buf){
cout<<buf<<endl;
}

void pop(){
    if(fr == endd+1)
cout<<"start end at same place"<<endl;
//else{
char temp;
if(*fr == ' ')
cout<<"no new element to pop push first"<<endl;
else
{temp = * fr;
*fr = ' ';

cout << "element popped = "<<temp<<endl;
cout<<buf<<endl;
if(fr == buf+9){
    fr = buf;
}
else
{
    fr = fr + 1;
}}}



void push(){
    if(fr == endd+1)
cout<<"start end at same place,queue full, will lead to overwriting shit"<<endl;
//else{
char temp;
cin>>temp;
if(*endd != ' ')
cout<<"dq first then eq"<<endl;
else{
*endd = temp;
if(endd == buf + 9){
    endd = buf;
}
else
{
    endd = endd + 1;
}}

cout<<buf<<endl;}
