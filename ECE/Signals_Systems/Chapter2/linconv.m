function y = linconv(x,h)
%this is the function that takes two parameters 
% one parameter is input to a system, other being system's impulse response
%it returns the output for corresponding input
l1 = length(x);
l2 = length(h);
l = l1 + l2 - 1;
for n=1:l
    y(n) = 0;
    for k=1:l1
        if((n-k)>=0 && (n-k)<l2)
        y(n) = y(n) + x(k)*h(n-k+1);
        end
    end
end
% disp(y);
%limitations, inputs need to be of finite size
%for infinite size inputs take a good number of values that can give a
%rough estimate of an answer
end

