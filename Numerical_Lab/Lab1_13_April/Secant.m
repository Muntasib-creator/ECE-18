clc;
x1=input('Enter initial value x1:')
x2=input('Enter initial value x2:')

while abs((x2-x1)/x2)>0.0001
    y1=x1^2-4*x1-10;
    y2=x2^2-4*x2-10;
    temp=x2-(y2*(x2-x1))/(y2-y1);
    x1=x2;
    x2=temp;
    x2
end;
display(x2);
