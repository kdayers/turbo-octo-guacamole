xvals = -20:.1:20;

final_vals = zeros(size(xvals));
f = 'x.^2-1';
df = '2*x';

for k=1:length(xvals)
    x0=xvals(k);
    [z,error_est] = newton(f,df, x0);
    final_vals(k) = z(end);
end;
clf
imagesc(xvals,[],final_vals)