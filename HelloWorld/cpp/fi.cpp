#include <iostream>
#include <math.h>
using namespace std;
class ft {
    float c;
    int fet;
    int inh;
    public:
        ft();
        void ftin(float );
        void operator ++();
        void operator ++(int);
        int inch();
        void ptn();
};
ft:: ft()
{
        c=1.1;
}

void  ft::  ftin(float b=1.0)
{

    c=b*12;
    inh=fmod(c,12);
    fet=c/12;
    if (inh==12){
        fet++;
        inh=0;
    }
}

void   ft:: operator ++()
{
    fet++;
}

void  ft::  operator ++(int)
{
    inh++;
     if (inh==12){
        fet++;
        inh=0;
    }
}


int   ft:: inch()
{
    int c;
    c=fet*12;
    c+=inh;
    return(c);
}

void  ft::  ptn()
{
  cout<<fet<<'\''<<inh<<'\"';
}


class Box
{
 public:
 ft len,wid,hgt;
 float vol;
 Box()
 {
    len.ftin();
     wid.ftin();
     hgt.ftin();
 }
 Box(float ,float ,float );
 void showBoxDetails();
 float getvol();
};

Box::Box(float a,float b,float c)
{
     len.ftin(a);
     wid.ftin(b);
     hgt.ftin(c);



}

void Box::showBoxDetails()
{
     cout<<"length ";
     len.ptn();
     cout<<" breath ";wid.ptn();
     cout<<" heighgt ";hgt.ptn();
     vol=getvol();
     cout<<'\n'<<"volume "<<vol<<'\n';
}

float Box:: getvol()
{
 int a,b,c;
 a=len.inch();
 b=wid.inch();
 c=hgt.inch();
 return((a*b*c)/1728);
}

int main() {
	Box b1,b2(17.7,10.5,2.9);
	cout << "This is 2nd assignment for OOP using C++ course" << endl;
	b1.showBoxDetails();
	b2.showBoxDetails();
	++b2.len;      // increase length of b2 by 1 foot
	b2.wid++;      // increase th of b2 by 1 inch
	b2.hgt++;      // increase heighgt of b2 by 1 inch
	b2.showBoxDetails();
	b2.hgt++;      // increase heighgt of b2 by 1 inch
	b2.showBoxDetails();
	return 0;
}
