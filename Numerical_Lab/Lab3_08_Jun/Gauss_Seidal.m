A = input('Enter a Co-efficient Matrix A: ');
B = input('Enter source vector B: ');
P = input('Enter intial guess vector: ');
n = input('Enter no of iterations: ');
e = input('Enter your tollerance: ');
N = length(B);
X = zeros(N,1);
for j= 1:n
    for i=1:N
        X(i) = (B(i)/A(i,i)) - (A(i,[1:i-1,i+1:N]))*P([1:i-1;i+1:N])/A(i,i);
        P(i) = X(i);
    end
    fprintf('Iterations no %d\n',j)
    X
end