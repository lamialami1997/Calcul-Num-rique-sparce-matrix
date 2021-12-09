function [L,U,P]=mylu(A)

n = size (A,1); //taille  n

P=eye(n,n);
L=eye(n,n); 
U=A; 

for k=1:n
    [piv, ind] = max(abs(U(k:n,k))); 

    ind = k-1+ind; //convertit l’indice local en un indice global de la ligne à échanger
  
    if (ind ~= k) then 

         mat_new = U(k, :); 
        U(k, :) = U(ind, :);  //echange 
        U(ind, :) = mat_new;


        mat_new1 = P(k, :); 
        P(k, :) = P(ind, :);  //echange 
        P(ind, :) =  mat_new1;


        if k>=2
           mat_new2 = L(k,1:k-1);
            L(k,1:k-1) = L(ind,1:k-1);
            L(ind,1:k-1) =  mat_new2;

        
        end
    end

    for i=k+1:n
     L(i,k)= U(i,k)/U(k,k);
     U(i,:)=U(i,:)-L(i,k)*U(k,:);
    end
end

endfunction
funcprot(0)
