function nextp = CantorIFS(p)
   i=ceil(2*rand);
   pset = [0 0; 1 0];
   nextp = 1/3*p+2/3*pset(:,i);