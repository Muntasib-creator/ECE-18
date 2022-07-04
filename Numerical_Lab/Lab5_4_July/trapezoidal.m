clc;
clear all;

a = -1;
b = 1;
n = 4;
h = (b-a);

sum = h*(qb(a)+qb(b))/2;
disp (sum);

a = 0;
b = pi/2;
n = 4;
h = (b-a);

sum = h*(sn(a)+sn(b))/2;
disp (sum);