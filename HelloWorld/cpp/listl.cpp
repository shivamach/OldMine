/*Assignment. Shivam Acharya 1PE16EC145 Class 6 'C'
Pwd - KanyeW 2010
Use STL of LinearList in your program to do list creation, 
element addition and deletion in list. Demonstrate usage of LinearList 
for integer type data and a user defined class object.
*/
#include<iostream>
#include<list> //conatiner from STL
#include<algorithm>
#include<iterator>

using namespace std;

//user defined class object
class Mark{
public:
char name;
int marks;
};
void display(Mark a){
    cout<<a.name<<'\t'<<a.marks<<'\n';
}

void showlist(list <Mark> g)
{
    list <Mark> :: iterator it1;
    for(it1 = g.begin();it1 != g.end();++it1){
        display(*it1);
        }
        cout<<'\n';
}



void showlist(list <int> g)
{
    list <int> :: iterator it;
    for(it = g.begin();it != g.end();++it){
        cout<<'\t'<<*it;
        }
        cout<<'\n';
}


int main(){    
//creating a list for int
std::list<int> my{1,2,3,4};
//std::list<Marks> beautiful{4,4,4,4}; user defined classs pe issues hai
std::list<int> dark{1,33,6,7};
//initialised with parameters boi
//inserting an element has variations, we need to use an iterator,which acts like 
//a particular pointer to an element in the list
list<int>::iterator first = find(my.begin(),my.end(),3);
my.insert(first,66);//why error coming for +??
showlist(my);
//removeing element using iterator
list<int>::iterator second = find(my.begin(),my.end(),66);
my.erase(second);
showlist(my);
//removing using remove
my.remove(3);
showlist(my);
//first points to the first element of list
//creating a list for a class,first making their objects
Mark a,b,c,d;
a.name = 'a';
a.marks = 8;
b.name = 'b';
b.marks = 7; 
c.name = 'c';
c.marks = 4;
d.name = 'd';
d.marks = 9;
//class values initialised
std::list<Mark> twisted{a,b,c,d};
list<Mark> :: iterator third = twisted.begin();
advance(third,2);
//allows us to advance the linear list iterator by some values
twisted.insert(third,a);
showlist(twisted);
//advance(third,1);
twisted.erase(third);
showlist(twisted);

return 0;    
}