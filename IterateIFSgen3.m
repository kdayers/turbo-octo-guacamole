function Output=InterateIFSgen3(n,Mset,pset,probset)
% Third generalization: allow functions to selected with different
% probabilites
% Iterate the Iterated Function System described by
% A(x) = M(x) + pi, where M is a matrix that rotates and contracts
% n times (after discarding the initial 50 iterates
% and output the results in the array "Output".  
% Output will be a 2 by n matrix, where each column is a point on the orbit.

% Generate a random initial point, p.
p = rand(2,1);
% Store it in Output
Output = p;
% Iterate 50 times to get close to the attractor
for k = 1:50
    nextp = feval(@IFS,p,Mset,pset,probset);
    p = nextp;
end;
% clear the figure, plot the last point, set "hold" to "on" and axis
% to 'square'.  
clf
darkgreen = [0 2/3 0]; % define a color called "dark green"
plot(p(1),p(2),'.','color',darkgreen)
hold on
axis('square')
% Iterate n more times
for k = 1:n
    nextp = feval(@IFS,p,Mset,pset,probset);
    Output = [Output, nextp];
    p = nextp;
    plot(p(1),p(2),'.','color',darkgreen)
end;

function nextp=IFS(p,Mset,pset,probset)

prob=rand;  % pick a random number between 0 and 1
L = length(pset(1,:));  % the number of points
I = find(probset > prob);  % which probabilities are greater than p
i = I(1);  %  the function to use is the smallest of these
M = Mset(:,:,i);
p0= pset(:,i);
nextp = M*p+p0;
