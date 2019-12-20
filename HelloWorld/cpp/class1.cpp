#include<iostream>
#include<string>
using namespace std;

class Basic{ public:
string name;
void introduce(){
    cout<<"hi my name is"<<name<<endl;
}
};

int main(){
    Basic trial1;
    Basic *trial2 = new Basic();
    trial1.name = "doesnt matter,this is the normal way";
    trial1.introduce();
    trial2->name = "doesnt matter, here i dynamically allot shit yo";
    trial2->introduce();
    delete trial2;
    return 0;
}