clc; clear all;
h = 0.5;
value = 2;
x = 1;
y = 2;
while x<value
    f1 = 2 * y/x;
    f2 = y + h * 2 * (y+h*0.5*f1)/(x+h*0.5);
    x = x+h;
    y = f2;
    
end

disp(y);
h = 0.25;
value = 2;
x = 1;
y = 2;
while x<value
    f1 = 2 * y/x;
    f2 = y + h * 2 * (y+h*0.5*f1)/(x+h*0.5);
    x = x+h;
    y = f2;
    
end

disp(y);