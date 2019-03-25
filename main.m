%ode

n=10;

%global n
global h

v = zeros(1,n-1);
[t,a] = ode45('IBVP',[0 180],v);
%plot3(a(:,100),a(:,2),a(:,3))
figure(1)
plot(0:100/n:100,[0 a(end,:) 0])
grid on
title('Solution')
nt=length(t);
tvals=zeros(n+1,nt);xvals=zeros(n+1,nt);uvals=zeros(n+1,nt);
figure(2)
xvals = 0:(100/n):100;
apadded = [zeros(nt,1) a zeros(nt,1)];
surf(xvals,t(1:10:end),apadded(1:10:end,:))
% for i=1:n+1
%     for j=1:nt
%         tvals(i,j)=t(j);
%         xvals(i,j)=(i-1)/n;
%         uvals(i,j)=a(j,i);
%     end
% end
% figure(3)
% tsample = t(1:10:end);
% ntsample = length(tsample);
% F(ntsample) = struct('cdata',[],'colormap',[]);
% for i=1:ntsample
%     clf
%     plot(xvals,apadded(1+10*(i-1),:))
%     axis([0 1 0 0.0002])
%     F(i)=getframe
% end
% movie(F,2)