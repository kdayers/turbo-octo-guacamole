% Script for generating the 7 attractors in Lab 3: Iterated Function
% Systems
%
% First attractor
beta = 1/3;
theta = 0;
pset=[0 1/2 1 1/2 1/2; 1 1 1 1/2 0];
Output = IterateIFSgen(10000,beta,theta,pset);
% Second attractor
% Same beta and theta
pset = [1/4,3/4,0,1,1/4,3/4; 1,1,.5,.5,0 0];
% Needs more iterates to look good!
Output = IterateIFSgen(10000,beta,theta,pset);
% Third attractor
% Same beta =1/3
pset = [ 0 1/3 0 1/3 2/3;1 1 2/3 2/3 1/3];
Output = IterateIFSgen(10000,beta,theta,pset);
% Fourth attractor
% Same beta = 1/3
pset = [1/2 0 1 1/2; 1 1/2 1/2 0];
Output = IterateIFSgen(10000,beta,theta,pset);
% Fifth attractor
% same beta = 1/3
pset = [0 1/2 0 1 1; 1 1 1/2 1/2 0];
Output = IterateIFSgen(10000,beta,theta,pset);
% Sixth attractor
% Same beta = 1/3
pset = [0 1/2 1 0 1 0 1/2 1; 1 1 1 1/2 1/2 0 0 0];
% Needs more iterations!
Output = IterateIFSgen(50000,beta,theta,pset);
% Seventh attractor
theta = pi;
beta = .5;
pset = [0 1 .5; 2/3 2/3 0 ];
Output = IterateIFSgen(10000,beta,theta,pset);
% Levy Dragon
thetaset=[pi/4, -pi/4];
betaset = [1/sqrt(2), 1/sqrt(2)];
pset = [0, .5+1/sqrt(2); 0, .5+1/sqrt(2)];
Output = IterateIFSgen2(10000,betaset,thetaset,pset);
% Fractal Fern
Mset(:,:,1) =[.85,.04; -.04,.85];
Mset(:,:,2) =[.2, -.26; .23, .22];
Mset(:,:,3) =[-.15, .28; .26, .24];
Mset(:,:,4) =[0 0; 0 .16];
pset = [0 0 0 0; 1.6, 1.6, .44, 0];
probset = [.85, .92, .99, 1];
Output = IterateIFSgen3(5000,Mset,pset,probset);
% Sierpinski Pentagon
betaset = (3-sqrt(5))/(2)*ones(1,5);
thetaset = zeros(1,5);
r = betaset(1);
phi = 2*pi/5;
pset = [0, 1,  r/(1-r)*(1 + cos(phi) + cos(phi/2)), r/(1-r)*cos(phi/2), r/(1-r)*(-cos(phi) + cos(phi/2)-1); ...
    0, 0,r/(1-r)*(sin(phi)+sin(phi/2)), r/(1-r)*(2*sin(phi)+sin(phi/2)), r/(1-r)*(sin(phi)+sin(phi/2))];
Output = IterateIFSgen2(10000,betaset,thetaset,pset);