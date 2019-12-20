#include<iostream>
#include<string>

using namespace std;
class Pattern{
    private:
    int n;
    public:
    int row,column;
    int no_of_terms(int in){
        int i,countt=0;
        for(i=in;i!=0;i--)
        countt = countt+1;
        countt = (countt*2) - 1;
        return countt;
    }
    Pattern(){
        cin>>n;
        row = n+1;
        column = no_of_terms(n);
        print_the_pattern(n,row,column);
        
       
 }
 void print_the_pattern(int n,int row,int column){
     int i,j,c,dummy=0,k=0;
     int array[row][column];
     cout<<"n = "<<n<<endl<<"row = "<<row<<endl<<"column = "<<column<<endl;//printing correctly
     for(i=0;i<row-1;i++)
     {dummy = 0;
     k=0;
         for(c=i;c!=0;c--)
         { 
           array[i][k] = n-dummy;
         //cout<<n-dummy<<" ";
          dummy++;
          k++;}
          dummy = i;
        for(j = i;j<=column-i-1-1;j++)
        //cout<<n-dummy<<" ";
         { array[i][k] = n-dummy;k++;}
               for(c=i+1;c!=0;c--)
         {   if(n-dummy==0)
             break;
             //cout<<n-dummy<<" ";
             array[i][k] = n-dummy;
             k++;
             dummy--;}
        //cout<<endl;
        } 
        //printing the loop directly stored in array thingy
        for(i=0;i<row-1;i++)
           {
               for(j=0;j<column;j++)
               {
                   cout<<array[i][j]<<" ";
               }
               cout<<endl;
           }
        for(i=row-2;i>=0;i--)
        {
            for(j=column-1;j>=0;j--)
            {
                cout<<array[i][j]<<" ";
            }
            cout<<endl;
        }           

    
        /*for(j = 0;j<=column-0-1;j++)
        cout<<n-0<<" ";
        cout<<endl;}*/}}
;

int main(){
    cout<<"give value of n between 1 and 1000"<<endl;
    Pattern *one = new Pattern();
    return 0;
}