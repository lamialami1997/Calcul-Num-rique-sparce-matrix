exec mat_vec.sci 
exec stock_csr.sci

[fich,mod]=mopen("test_mat_vec.dat" , "w")

for size_=10:10:500

    temp_matcsr_vect = 0 
    temp_mat_vect=0 
    
    disp(size_)
    for rep=1:10 
    
    
    v=rand(size_,1)
    FILL = 0.35;
    A = sprand(size_,size_,FILL);
    A = full (A);
    [AA,JA,IA,n,m,nnz_]=stock_csr(A)


    tic()
    [r]=mat_vect(AA,JA,IA,n,m,v)
    temp_matcsr_vect=temp_matcsr_vect+toc()
    tic()
    r=A*v
    temp_mat_vect= temp_mat_vect+toc()

  
    
    end
    mfprintf(fich,"%.16lf %.16lf %d   \n",temp_mat_vect/10,temp_matcsr_vect/10 ,size_ )
    
end

mclose(fich)
