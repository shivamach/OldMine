clear
clc
%pg 125 of djvu textbook,  108 of book
%First Order Recursive System:Reflect and shift convolution sum eval
%system is casual
n = input('give no of terms accuracy');
rho = input('give the exponential');
%h(n) = rho^n*u(n)
for k =1:n
   h(k) = rho^(k-1);          % -1 as indices here
end
%x(n) = b^n * u(n+4); b not equal to rho
b = input('give x exponential coef');
for k=1:n+4
    x(k) = b^(k-5);%again for indices
end
%x values are at power zero from
y = linconv(x,h);
stem(y);
%it works