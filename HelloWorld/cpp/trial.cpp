#include<iostream>
using namespace std;

int main(){
	float *x; 
	x = new float[2];
	cout<<"give array values"<<endl;
	cin>>x[0];
	cin>>x[1];
	cout<<"the values entered are "<<x[0]<<" "<<x[1]<<endl;
	delete [] x;
	return 0;
}
