clc;
clear all;

a = 1;
b = 2;
n = 10;
h = (b-a)/n;

sum = h*(qb(a)+qb(b))/2;
for i = 1:n-1
    sum = sum + h*qb(a+i*h);
end
disp (sum);

a = 0;
b = pi/2;
n = 10;
h = (b-a)/n;

sum = h*(sn(a)+sn(b))/2;
for i = 1:n-1
    sum = sum + h*sn(a+i*h);
end
disp (sum);
% disp(sn(10));
% disp(sn(20));