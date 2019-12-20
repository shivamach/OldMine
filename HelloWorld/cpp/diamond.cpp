#include<iostream>
#include<string>

using namespace std;

class Animal{public:
    void intro(){
        cout<<"this is an animal"<<endl;
    }
};

class Lion:public Animal{
    /*public:
    void intro(){
       cout<<"this here is lion under animal"<<endl;
    }*/
};

class Tiger:public Animal{
   /* public:
    void intro(){
       cout<<"this here is tiger under animal"<<endl;
    }*/
};

class Liger:public Lion,public Tiger{
    /*public:
    void intro(){cout<<"this is liger from lion and tiger under animals"<<endl;}*/
};

int main(){
    Liger lt;
    Tiger T;
    Lion l;
    Animal an;

    lt.intro();
    T.intro();
    l.intro();
    an.intro();

    return 0;
}