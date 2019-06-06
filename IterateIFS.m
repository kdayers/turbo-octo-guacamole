function Output=IterateIFS(IFS,n)
% Iterate the Iterated Function System stored in the file IFS
% n times and put the results in the
% array "Output".  
% This will be a 2 by n matrix, where each column is a point on the orbit.

% Generate a random initial point, p.
p = rand(2,1);
% Store it in Output
Output = p;
% clear the figure and plot the initial point set "hold" to "on" and axis
% to 'square'
clf
plot(p(1),p(2),'r*')
hold on
axis('square')
% Iterate 50 times to get close to the attractor
for k = 1:50
    nextp = feval(IFS,p);
    p = nextp;
end;
% Iterate n more times
for k = 1:n
    nextp = feval(IFS,p);
    Output = [Output, nextp];
    p = nextp;
    plot(p(1),p(2),'.')
    xlim([-1,1])
    %drawnow
end;
