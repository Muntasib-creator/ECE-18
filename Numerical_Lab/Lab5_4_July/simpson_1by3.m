clc;
clear all;

a = 1;
b = 2;
h = (b-a)/2;
x1 = (a+b)/2;

sum = (b-a)*(qb(a)+qb(b)+4*qb(x1))/6;
disp (sum);

a = 0;
b = pi/2;
h = (b-a)/2;
x1 = (a+b)/2;

sum = (b-a)*(sn(a)+sn(b)+4*sn(x1))/6;
disp (sum);