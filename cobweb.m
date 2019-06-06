
function  X=cobweb(fcn,x0,N)

%draw a cobweb diagram 
%for N iterates of the function fcn starting at x0

%using parameter a for the function

xmin=-1;
xmax = 1;
ymin = -1.05;
ymax = 1.2;

 x = xmin:.001:xmax;  %change this if the domain of your function is something other than [0,1]


global a 
    


L=length(x);
for i=1:L
	y(i)=feval(fcn,x(i));
end;

%plot the original function and the diagonal y=x
plot(x,y,'b','linewidth',2);
grid on
hold on
plot(x,x,'c','linewidth',1);  %the diagonal
z=0.*x;
plot(x,z,'k');  %the x-axis
m=min(min(x),min(y));
M=max(max(x),max(y));
plot([0 0],[m M],'k');  %the y-axis

%compute an orbit and store in X 
X(1)=x0;
for j=1:N
	X(j+1)=feval(fcn,X(j));
end;
plot([X(1) X(1) X(2)],[0 X(2) X(2)],'r')
hold on
drawnow
FX(1)=X(2);
XX(1) = X(1);
XX(2)=X(1);
for j=2:N
	XX(2*j-1)=X(j);
	XX(2*j) = X(j);
	FX(2*j-1)=X(j);
	FX(2*j-2)=X(j);
    plot(XX(2*j-3:2*j-1),FX(2*j-3:2*j-1),'r')
    axis([xmin,xmax,ymin,ymax])
    xlabel('$x_t$','fontsize',18,'interpreter','latex')
    ylabel('$x_{t+1}$','fontsize',18,'interpreter','latex')
    drawnow
    %Mov(j-1) = getframe;
    % pause
end;
XX(1)=X(1);
XX(2)=X(1);
FX(1)=X(1);
FX(2*j)=X(N+1);

%plot(XX,FX,'r');
%t=['a = ' num2str(a)];
%title(t);
%axis([xmin,xmax,ymin,ymax])

