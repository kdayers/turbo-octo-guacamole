m=1;
counts=[];
while m<100000    
    n=[2];
    p=2;
    count=0;
    while 0<p && p<4
        if p==2
        count=count+1;
        end
        x=randi(2);
        if x==1
            p=p-1;

        else
            p=p+1;

        end
    n=[n p];
    end
    m=m+1;
    counts=[counts count];
end    
mean(counts)