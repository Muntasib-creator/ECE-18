clc;
x1=input('Enter initial value x1:')
y=x1^2-3*x1+2;
yn=2*x1-3;
x2=x1-y/yn;
while abs((x2-x1)/x2)>0.0001
    y=x1^2-3*x1+2;
    yn=2*x1-3;
    temp=x1-y/yn;
    x2=x1;
    x1=temp;
    x1
end;
display(x1);
