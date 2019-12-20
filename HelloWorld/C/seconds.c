/* seconds.c */
/* Program that pauses. */
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
void sleep( int nbr_seconds );

int main( void )
{
int ctr;
int wait = 13;
/* Pause for a number of seconds. Print a *
* dot each second waited.
*/
printf("Delay for %d seconds\n", wait );
printf(">");
for (ctr=1; ctr <= wait;ctr++)
{
printf(".");
fflush(stdout);/* fflush is here is used as we are printing >.... in a line and
its not guaranteeed that it will be printed as printf's dont have \n in the end, printf waits
for all statements to be printed in one line before printing them all without fflush(stdout)
fflush makes printf flush out last printf without waiting for next ones until a ]n new line
is encountered*/
sleep( (int) 1 );}
printf("Done\n");
return 0;
}
 
void sleep( int nbr_seconds )
{
clock_t goal;
goal = ( nbr_seconds * CLOCKS_PER_SEC ) + clock();
while( goal > clock() )
{
; /* loop */
}
}/*understand the clock_t and CLOCKS_PER_SEC more properly under time.h*/