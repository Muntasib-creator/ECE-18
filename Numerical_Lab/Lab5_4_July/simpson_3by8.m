clc;
clear all;

a = 1;
b = 2;
h = (b-a)/3;

fa = qb(a);
f1 = qb(a+h);
f2 = qb(a+2*h);
fb = qb(b);
sum = fa + 3*f1 + 3*f2 + fb;
sum = sum*h*3/8;
disp (sum);

a = 0;
b = pi/2;
h = (b-a)/3;

fa = sn(a);
f1 = sn(a+h);
f2 = sn(a+2*h);
fb = sn(b);
sum = fa + 3*f1 + 3*f2 + fb;
sum = sum*h*3/8;
disp (sum);