#include<stdio.h>
#include<math.h>

 int main()
 {
    float f_array[2],*pf_array;
    int i_array[2],*pi_array,sizei,sizef;
    int i,k;
    printf("checking the size of int and float using pointers\n");
    printf("give a float type array of max 3 elements\n");
    for(i=0;i<2;i++)
    {scanf("%f",&f_array[i]);}
    printf("give an int array size 3 max\n");
    for(k=0;k<2;k++)
    {scanf("%d",&i_array[k]);}
    //checking first that array variable name and array pointer both point to same adddress
    pf_array = &f_array[0];
    pi_array = &i_array[0];
    printf("pf_array = %f\nf_array = %f\nf_array[0]=%f\n*f_array=%f\n",pf_array,f_array,f_array[0],*f_array);
    /* here when i replace %xd with %f, the pointer instead of showing address shows 
    the first element and the f_arra[0] which should show the first element shows zero.
    upon using %xd, it worls correctly again somehow
    why is this happening
    also this code execution returns stack smashing error detected, why is that
    where is there an overlfow. will that overflow go away if i use long int?? */
    printf("pi_array = %xd\ni_array = %xd\ni_array[0]=%d\n*i_array=%d\n",pi_array,i_array,i_array[0],*i_array);
    printf("now finding the size of float and int types\n");
    pf_array = &f_array[1];
    pi_array = &i_array[1];
    //giving pointers the address of second element in both the arrays

    //finding size by subtracting second elemtn address from first which is also pointed by array name
   
    }