clc;
clear all;

a = 1;
b = 2;
n = 4;
fn = '1+power(x,3)';
disp(rm(fn,a,b,n));

a = 0;
b = pi/2;
n = 10;
fn = 'sqrt(sin(x))';
disp(rm(fn,a,b,n));