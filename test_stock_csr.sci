exec stock_csr.sci

n=8;
m=5;
FILL = 0.35;
A = sprand(n,m,FILL);
A = full (A);
disp(A);

[AA,JA,IA,n,m,nnz_]=stock_csr(A)
disp(" ===AA====");
disp(AA(:));
disp("===JA===");
disp(JA(:));
disp("===IA===");
disp(IA(:));

