#include<iostream>
using namespace std;

class FirstOne{
    public:
    void basefunc(){
        cout<<"hello world from a class"<<endl;
    }
};//class blueprint declared

int main(){
    FirstOne tryy;
//try is an object of class FirstOne    
    tryy.basefunc();
return 0;
}