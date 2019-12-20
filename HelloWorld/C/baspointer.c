#include <stdio.h>

void update(int *a,int *b) {
    int ta,tb;
    ta = *a;
    tb = *b;
    *a = ta + tb;
    if(ta-tb<0)
    {*b = tb-ta;}
    else{
        *b = ta-tb;
    }
}

int main() {
    int a, b;
    int *pa = &a, *pb = &b;
    
    scanf("%d %d", &a, &b);
    update(pa, pb);
    printf("%d\n%d", a, b);

    return 0;
}