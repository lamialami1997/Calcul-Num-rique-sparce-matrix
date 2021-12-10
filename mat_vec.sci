function[r]=mat_vect(AA,JA,IA,n,m,v)
r=zeros(n,1)
for i=1:n
    for j=IA(i):IA(i+1)-1
    
        r(i)=r(i)+AA(j)*v(JA(j))
    end
end
endfunction
