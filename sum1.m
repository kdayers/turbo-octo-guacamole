s=0;
i=1;
m=0;
while m<1001
    if isprime(i)==1
        s=s+i;
        m=m+1;
    end
    i=i+1;
end
s