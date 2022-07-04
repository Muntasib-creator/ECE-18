clc;
clear all;

a = 1;
b = 2;
n = 100;
h = (b-a)/n;

sum = qb(a) + qb(b);
for i=1:n/2
  sum = sum + 4*qb((2*i-1)*h);
end
for i=1:n/2-1
  sum = sum + 2*qb(2*i*h);
end
sum = sum * h/3;
disp (sum);


a = 0;
b = pi/2;
n = 100;
h = (b-a)/n;

sum = sn(a) + sn(b);
for i=1:n/2
  sum = sum + 4*sn((2*i-1)*h);
end
for i=1:n/2-1
  sum = sum + 2*sn(2*i*h);
end
sum = sum * h/3;
disp (sum);