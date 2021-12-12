exec mat_vec.sci 
exec stock_csr.sci

[fich,mod]=mopen("test_mat_vec.dat" , "w")

for n=2:2:60
 for m = 4:4:60
    temp_matcsr_vect = 0 
    temp_mat_vect=0 
    
 
    for rep=1:10 
    
    v=rand(m,1)
    FILL = 0.35;
    A = sprand(n,m,FILL);
    A = full (A);
    [AA,JA,IA,n,m,nnz_]=stock_csr(A)


    tic()
    [r]=mat_vect(AA,JA,IA,n,m,v)
    temp_matcsr_vect=temp_matcsr_vect+toc()
    tic()
    r=A*v
    temp_mat_vect= temp_mat_vect+toc()

  
    
    end
    mfprintf(fich,"%.16lf %.16lf %d   \n",temp_mat_vect/10,temp_matcsr_vect/10 ,n*m )
    
end
end 
mclose(fich)
