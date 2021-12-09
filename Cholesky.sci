//fonction cholesky pour trouver  la factorisation de cholesky d'une matrice symétrique , définie positive A de taille nxn
//L = factorisation de Cholesky de la matrice A est comme suit  A=LL^T
function [L] = cholesky(A)
   n = size(A,1);
 
   A(1,1) = sqrt(A(1,1)); // premier element de la matrice A et L réspictivement 
   A(2:n,1) = (A(2:n,1)/A(1,1));
   for j = 2 : n-1
        for p = 1 : j-1 
         A(j,j) = A(j,j) - A(j,p)*A(j,p);
        end
        A(j,j) = sqrt(A(j,j));
        
        for i = j+1 : n
         A(i,j) =( A(i,j) - A(i,1:j-1)*(A'(1:j-1,j)))/A(j,j)
        end
    end
    A(n,n) =sqrt(A(n,n) - (A(n,1:n-1) * A'(1:n-1,n)));
    L = tril(A);
endfunction
    
