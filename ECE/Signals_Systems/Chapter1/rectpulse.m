%plotting a square wave of amplitude = 10 till time is less than or equal
%to 5,above zero , 0 elsewhere

u1 = [zeros(1,10),ones(1,11)];
u2 = [zeros(1,16),ones(1,5)];
un = 10*u1-10*u2;
n = -10:10;
stem(n,un)
%this piece of code gives a good idea on how to work with matrcies being
%equalin matlab
