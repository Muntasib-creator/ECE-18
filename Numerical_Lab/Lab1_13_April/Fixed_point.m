clc;
x1=input('Enter initial value x:')
x2=(x1+5/x1)/2;
while abs((x2-x1)/x2)>0.0001
    temp=(x1+5/x1)/2;
    x2=x1;
    x1=temp;
    x1
end;
display(x1);
