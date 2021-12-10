//ROW : contains the row-index range of the non-zero elements of A 
//COL: contains the column-index of the non-zero elements of A 
//VAL: contains the value of the non-zero elements of A 
function [ROW,COL,VAL,n,m,nnz_]=stock_csr(A)
nnz_=0;
VAL =list();
ROW=list(1); // le premier ele de la liste =1
COL=list();
for i=1 :n
    for j=1 :m
      
        if  A(i,j)~=0
            nnz_=nnz_+1;
            VAL($+1)=A(i,j);
            COL($+1)=j;
            
         end   
      end
    ROW($+1)=nnz_+1;
end 
endfunction
