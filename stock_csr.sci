//ROW : contains the row-index range of the non-zero elements of A 
//COL: contains the column-index of the non-zero elements of A 
//VAL: contains the value of the non-zero elements of A 
function [AA,JA,IA,n,m,nnz_]=stock_csr(A)
nnz_=1;
AA =list();
IA=list(1); // le premier ele de la liste =1
JA=list();
for i=1 :n
    for j=1 :m
        if  A(i,j)~=0
            nnz_=nnz_+1;
            AA($+1)=A(i,j);
            JA($+1)=j;
         end   
      end
    IA($+1)=nnz_;
end 
//IA($+1) = nnz_+1;
endfunction
