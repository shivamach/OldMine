#include<iostream>
#include<string>

using namespace std;

class Marks{
    private:
    int markstest1;
    int markstest2;
    public:
    Marks(){
        markstest1 = 0;
        markstest2 = 0;
    }
    Marks(int m1,int m2){
        markstest1 = m1;
        markstest2 = m2;
    }
    void display(){
        cout<<"test one marks "<<markstest1<<endl<<"test two marks "<<markstest2<<endl;
    }
    Marks operator+(Marks m){//overloading withing class
        Marks ret;
        ret.markstest1 = markstest1 + m.markstest1;
        ret.markstest2 = markstest2 + m.markstest2;
        return ret;
    }
    Marks operator-(Marks p);
};
//returntype classname :: functionname(paramters passed){function defn}
//define the function prototype within class
//protoyping withing class makes this not a friend function
//it just leads to defining the fucntion of class outside the class using
//returntype classname :: fucntioname(shit){shit}
Marks Marks :: operator-(Marks p){
    Marks temp;
    temp.markstest1 = markstest1 - p.markstest1;
    temp.markstest2 = markstest2 - p.markstest2;
    
}

int main(){
    Marks m1(13,11),m2(17,19);
    Marks m3,m4;
    m3 = m1 + m2;
    m4 = m2 - m1;
    m3.display();
    m4.display();
    return 0;
}