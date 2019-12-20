#include<iostream>
#include<string>
using namespace std;

class FirstOne{
    private:
    string *name;
    int *age;
    float *pmarks;
    public:
    FirstOne(string iname,int iage,float ipmarks){
    name = new string;
    age = new int;
    pmarks = new float;
    cout<<"addresses assigned to private variables"<<endl;
    *name = iname;
    *age = iage;
    *pmarks = ipmarks;
    }
    ~FirstOne(){
        delete name;
        delete age;
        delete pmarks;
        cout<<"memory freed"<<endl;
    }
    void display(){
        cout<<"using contructor addresses given and variables are at"<<endl;
        cout<<"name = "<<*name<<" at address = "<<name<<endl;
        cout<<"age = "<<*age<<" at address = "<<age<<endl;
        cout<<"pmarks = "<<*pmarks<<" at address = "<<pmarks<<endl;
    }
};

int main(){
    FirstOne *Me = new FirstOne("Shivam Acharya",19,85.4);
    Me->display();
    delete Me;
    return 0;
}