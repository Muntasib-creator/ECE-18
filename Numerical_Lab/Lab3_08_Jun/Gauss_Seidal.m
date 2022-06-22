% jacobi method
% example 8.1

clc;
clear;
EPS = 0.0001;

a = [2 1 1; 3 5 2; 2 1 4;];
b = [5 15 8]';
m = length(b);

for i=1:m
    xo(i) = b(i)/a(i,i);
end

% xo = [0,0,0];
Break = 1;
it = 0;
while Break == 1
    Break = 0;
    for i = 1:m
        bn = b(i);
        for j = 1:m
            if (i~=j)
                bn = bn -a(i,j)*xo(j);
            end
        end
        x(i) = bn/a(i,i);
        if (abs((x(i)-xo(i))/x(i)) > EPS)
            Break = 1;
        end
        xo(i) = x(i);
    end
%     xo=x;
    it = it + 1;
end
disp(x);
disp(it);