%heat equation setup
function output = IBVP(t,a)

% global n
global h
n = length(a)+1; h = 100/n;



%hold on
i = 1:n-1;

b = f(t,i)';
kii = ones(1,n-1)*8.02/h;
kij = ones(1,n-2)*(-4.01/h);
K=diag(kii)+diag(kij,1)+diag(kij,-1);

mii = ones(1,n-1)*8.96*0.385*2*h/3;
mij = ones(1,n-2)*8.96*0.385*h/6;
M=diag(mii)+diag(mij,1)+diag(mij,-1);
Min = inv(M);
output = Min*(-K*a +b);
end

%y = K\b;
%y = [0 transpose(y) 0];
%x = 0:h:1;

%plot(x2,y2)
%hold off
%end