function [L,D] = myldltscale(A) 
    n = size(A,1);
    L = eye(n,n);
    D = zeros(n,n);
    
    D(1,1) = A(1,1);
    L(2:n,1) = A(2:n,1)/D(1,1);
    for j = 2 : n
        D(j,j) = A(j,j) - L(j,1:j-1)*(L(j,1:j-1)*D(1:j-1,1:j-1))';
        L(j+1:n, j) = (A(j+1:n,j) - L(j+1:n,1:j-1)*(L(j,1:j-1)*D(1:j-1,1:j-1))')/D(j,j);
    end   
endfunction
