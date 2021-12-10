exec mat_vec.sci 
exec stock_csr.sci
n=7;
m=9;
v=rand(m,1)
FILL = 0.35;
A = sprand(n,m,FILL);
A = full (A);
[AA,JA,IA,n,m,nnz_]=stock_csr(A)

disp(IA)
disp(A)
[r]=mat_vect(AA,JA,IA,n,m,v)
disp(r)
disp(A*v)

