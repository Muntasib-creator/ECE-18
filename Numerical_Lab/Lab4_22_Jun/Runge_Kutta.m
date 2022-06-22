clc; clear all;
h = 0.5;
value = 2;
x = 1;
y = 2;
while x<value
    k1 = h*2*y/x;
    k2 = h*2*(y+k1/2)/(x+h*0.5);
    k3 = h*2*(y+k2/2)/(x+h*0.5);
    k4 = h*2*(y+k3)/(x+h);
    k = (k1+2*k2+2*k3+k4)/6;
    y = y + k;
    x = x + h;
end
disp(y);
h = 0.25;
value = 2;
x = 1;
y = 2;
while x<value
    k1 = h*2*y/x;
    k2 = h*2*(y+k1/2)/(x+h*0.5);
    k3 = h*2*(y+k2/2)/(x+h*0.5);
    k4 = h*2*(y+k3)/(x+h);
    k = (k1+2*k2+2*k3+k4)/6;
    y = y + k;
    x = x + h;
end
disp(y);