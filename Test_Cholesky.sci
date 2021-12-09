exec Cholesky.sci
A1= rand(4,4);
A= A1*A1'; //A est symmetrique
[L]= cholesky(A); //Algo de Cholesky --> L(Triang inf)
disp(L);

chol(A)'; //Fonction Cholesky de Scilab --> Transp(chol) -> L
disp(chol(A)');
