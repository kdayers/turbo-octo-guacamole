function M=ComplexGrid(xmin,xmax,ngrid)
% grid step size
delta=(xmax-xmin)/ngrid;
% range vector
x=xmin:delta:xmax;
% horizontal range matrix = real part
A=ones(length(x),1).*x;
% vertical range matrix = imaginary part
B=x'.*ones(1,length(x));
% complex range matrix
M=A+1i*B;
figure(1)
% plot magnitude of complex numbers
subplot(1,2,1)
imagesc(abs(M))
% plot arguments of complex numbers
subplot(1,2,2)
imagesc(angle(M))