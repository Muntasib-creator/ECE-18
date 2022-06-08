clc;
clear all;

x= [ 1 2 3 4 5];
f = [1 1.4142 1.7321 2 2.2361];
% val=input('Enter val:');
val = 3.5;

ans = newton_interpolation(x,f,val);
ans