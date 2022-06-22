clc; clear all;
h = 0.25;
value = 2;
x0 = 1;
y0 = 2;

y1 = RK(x0+h);
x1=x0+h;
disp(y1);

y2 = RK(x1+h);
x2=x1+h;
disp(y2);

y3 = RK(x2+h);
x3=x2+h;
disp(y3);

x4 = x3 + h;
% disp(RK(x3+h*2));

f0 = 2*y0/x0;
disp(f0);
f1 = 2*y1/x1;
disp(f1);
f2 = 2*y2/x2;
disp(f2);
f3 = 2*y3/x3;
disp(f3);

y4p = y0 + 4/3*h*(2*f1-f2+2*f3);
f4p = 2*y4p/x4;
y4c = y2 + h/3*(f2+4*f3+f4p);

disp(y4c);
disp(y4p);
