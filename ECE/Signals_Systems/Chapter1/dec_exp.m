%plotting given x(t) v/s time as continnous time signal
%comparing plot of two decaying exponentials being added and subtracted
a1 = 1;
a2 = 0.5;
b1 = 10;
b2 = 5;
%exponentian general form is b*e^(a*t)
t = 0:0.01:5;
%t vector is given
x1 = b1*exp(-a1*t)+b2*exp(-a2*t);
x2 = b1*exp(-a1*t)-b2*exp(-a2*t);
%x1 and x2 are obvious
plot(t,x1)
axis([-0 5 -1 20]);
%axis boundaries to observe plot clearly
%no negative x values required as time exists only from 0
hold on
plot(t,x2,'r')
%plotted together and compared 
hold off
clear
%done

