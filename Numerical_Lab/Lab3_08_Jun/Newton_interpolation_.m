clc;
clear all;

x= [ 1 2 3 4 5];
f = [1 1.4142 1.7321 2 2.2361];
x= [ 100 200 400 600 700];
f = [2505 4970 10101 14919 17532];
% val=input('Enter val:');
val = 1000;

ans = newton_interpolation(x,f,val);
ans