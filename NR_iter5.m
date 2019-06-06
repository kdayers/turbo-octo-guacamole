function x=NR_iter5(x0,nstep)
% set the current guess x to the initial guess x0
x=x0;
% loop iterating nstep guesses
for i=1:nstep
% compute the value taken by f at x
f=x.^8-3*x.^3+x.^2-1;
% compute the value taken by f? at x
df=8*x.^7-9*x.^2+2*x;
% compute the updated guess x
x=x-f./df;
% plot magnitude of complex numbers
subplot(1,2,1)
imagesc(abs(x))
% title indicating frame guesses
str=sprintf('frame %d',i);
title(str);
% plot arguments of complex guesses
subplot(1,2,2)
imagesc(angle(x))
pause(0.1)
end
figure(1)
% plot magnitude of final complex guesses
subplot(1,2,1)
imagesc(abs(x))
% plot arguments of final complex guesses
subplot(1,2,2)
imagesc(angle(x))