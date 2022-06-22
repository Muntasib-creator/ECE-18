clc; clear all;
h = 0.25;
value = 2;
x0 = 1;
y0 = 2;

y1 = RK(x0+h);
x1=x0+h;

y2 = RK(x1+h);
x2=x1+h;

y3 = RK(x2+h);
x3=x2+h;

x4 = x3 + h;

f0 = 2*y0/x0;
disp(f0);
f1 = 2*y1/x1;
disp(f1);
f2 = 2*y2/x2;
disp(f2);
f3 = 2*y3/x3;
disp(f3);

y4p = y3 + h/24*(55*f3-59*f2+37*f1-9*f0);
disp(y4p);
f4p = 2*y4p/x4;
disp(f4p);
y4c = y3 + h/24*(9*f4p+19*f3-5*f2+f1);
disp(y4c);
