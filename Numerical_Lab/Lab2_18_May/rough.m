a= [2 4 -6; 1 5 3; 1 3 2];
b = [ -4; 10; 5];
n = length(a);
l = zeros(n,n);
u = zeros(n,n);
for p = 1:n
    l(p,p) = 1;
end
u(1,:) = a(1,:);
l(:,1) = a(:,1)/u(1,1);
for i = 2:n
    for j = i:n
        u(i,j) = a(i,j) -l(i, 1:i-1)*u(1:i-1,j);
    end
    for k= i+1:n
        l(k,i) = (a(k,i)-l(k,1:i-1)*u(1:i-1,i))/u(i,i);
    end
end
display(l);
display(u);
y = zeros(n,1);

y(1) = b(1)/l(1,1);
for k = n-1:-1:1
    x(k) = (y(k)-u(k,k+1:n)*x(k+1:n)/u(k,k));
end
display(x);

A = [2 4 6; 1 3 1; 2 -4 2;];
b = [-8 10 -12];
[m,n] = size(A);
x = zeros(m,1);
l = zeros(m,m-10);
for k=1:m-1
    for i = k+1:m
        l(i,j) = A(i,k)/A(k,k);
        for j = k+1:n
            A(i,j) = A(i,j) - l(i,k)*A(k,j);
        end
        b(i)=b(i) -l(i,k)* A(k,j);
    end
end
display(A);
        



