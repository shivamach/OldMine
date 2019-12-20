#include<iostream>
#include<string>
using namespace std;

class Person{public:
    virtual void intro() = 0;
    
};

 void Person :: intro(){
    cout<<"defining virtual function pure defn here Person"<<endl;

}
class Student:public Person{public:
    void intro(){
        cout<<"this overrides virtual function Student"<<endl;
        //Person::intro();
    
    }
};

int main(){
    Student me;
    me.intro();
    me.Person::intro();
    return 0;
}