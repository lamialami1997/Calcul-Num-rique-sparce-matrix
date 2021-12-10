exec stock_csr.sci

n=8;
m=5;
FILL = 0.35;
A = sprand(n,m,FILL);
A = full (A);
disp(A);

[ROW,COL,VAL,n,m,nnz_]=stock_csr(A)
disp("VAL");
disp(VAL(:));
disp("COL");
disp(COL(:));
disp("ROW");
disp(ROW(:));

