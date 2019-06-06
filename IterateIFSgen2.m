function Output=IterateIFSgen2(n,betaset,thetaset,pset)
% Next generalization: allow different rotations and contractions for each
% function in the set
% Iterate the Iterated Function System described by
% beta (the set contraction factors), theta (the set of rotation) and 
% pset (the set of atrracting p-values) 
% n times (after discarding the initial 50 iterates
% and output the results in the array "Output".  
% Output will be a 2 by n matrix, where each column is a point on the orbit.

% Generate a random initial point, p.
p = rand(2,1);
% Store it in Output
Output = p;
% Iterate 50 times to get close to the attractor
for k = 1:50
    nextp = feval(@IFS,p,betaset,thetaset,pset);
    p = nextp;
end;
% clear the figure, plot the last point, set "hold" to "on" and axis
% to 'square'.  
clf
plot(p(1),p(2),'.')
hold on
axis('square')
% Iterate n more times
for k = 1:n
    nextp = feval(@IFS,p,betaset,thetaset,pset);
    Output = [Output, nextp];
    p = nextp;
    plot(p(1),p(2),'.')
end;

function nextp=IFS(p,betaset,thetaset,pset)

L = length(pset(1,:));  % how many attracting points
i = ceil(L*rand);
beta = betaset(i);
theta = thetaset(i);
p0= pset(:,i);
nextp = beta*[cos(theta), -sin(theta); sin(theta),cos(theta)]*(p-p0)+p0;
