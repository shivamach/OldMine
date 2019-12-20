clear
clc
%comparing dampin rates of diff damped sinusoidal signals
a = [500,750,1000];
%a belongs to e^(a*t)
A = 20; %amplitude
w0 = 2*pi*1000; % T = 0.001, f0 = 1000
phi = -pi/3; %phase angle
t = -0.002:0.00001:0.002;
%time range given
x = (A*sin(w0*t+phi)).*exp(-a(1,1)*t);
y = (A*sin(w0*t+phi)).*exp(-a(1,2)*t);
z = (A*sin(w0*t+phi)).*exp(-a(1,3)*t);
hold on
%plotting all together to see difference caused by damp exp
grid on
%easier to compare
plot(t,x,'b')
plot(t,y,'r')
plot(t,z,'k')
% all in same graph easy to compare

