clc;
clear all;
x= [ 1 2 3 4 5];
f = [1 1.4142 1.7321 2 2.2361];
n=length(x);

val=input('Enter value');
sm=0;

for i=1:n
    pr=1;
    for j=1:n
        if j~=i
            pr=pr*(val-x(j))/(x(i)-x(j));
        end
    end
    sm=sm+f(i)*pr;
end
sm



%[0 1 2 3]
%[0 1.7183 6.3891 19.0855]
%1.5
%[2 3 4]
%[1.4142 1.7321 2]
%2.5
