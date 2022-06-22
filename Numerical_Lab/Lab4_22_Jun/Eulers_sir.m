clc; clear all;
h = 0.5;
value = 2;
x = 1;
y1 = 2;
while x<value
    %m = 3*(x^2) +1;
    m = 2*y1/x;
    y2 = y1+h*m;
    x = x+h;
    y1=y2;
end
display(y1);

h = 0.25;
value = 2;
x = 1;
y1 = 2;
while x<value
    %m = 3*(x^2) +1;
    m = 2*y1/x;
    y2 = y1+h*m;
    x = x+h;
    y1=y2;
end
display(y1);