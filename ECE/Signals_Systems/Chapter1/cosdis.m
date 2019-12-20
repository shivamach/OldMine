%cos(2piFn) F = 0.1 n belongs to -1/2F to 1/2F
% otherwise zero
F = 0.1;
n = -1/(2*F):1/(2*F);
y = cos(2*F*n*pi);
n1 = -10:(-1/(2*F)-1);
n2 = (1/(2*F))+1:10;
x1 = 0*n1;
x2 = 0*n2;
%plot it wrt to n for F=0.1
stem(n,y,'k')
hold on
stem(n1,x1,'k')
stem(n2,x2,'k')
%stem as it is a discrete plot
axis([-10 10 -2 2])
%jugaad to plot zero elsewhere part using n1 n2 x1 x2 and axis
