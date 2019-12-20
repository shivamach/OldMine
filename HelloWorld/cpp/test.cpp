#include <bits/stdc++.h>

using namespace std;



int main()
{
    int n;
    cin >> n;
    cin.ignore(numeric_limits<streamsize>::max(), '\n');
    
    if(n>9)
        cout<<"Greater than 9"<<endl;
    else switch(n){
        case 1:printf("one\n"); break;
    case 2:printf("two\n"); break;
    case 4:printf("four\n"); break;
    case 5:printf("five\n"); break;
    case 6:printf("six\n"); break;
    case 7:printf("seven\n"); break;
    case 8:printf("eight\n"); break;
    case 9:printf("nince\n"); break;}
    return 0;
}
