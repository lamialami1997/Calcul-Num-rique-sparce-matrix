exec LDLT.sci
exec pivot_partiel.sci
exec lu.sci

[fich,mod]=mopen("test_ldlt.dat" , "w")

for _size=2:20:502

    temp_ldlt = 0 
    temp_pivot=0 
    temp_lu=0
 
    for rep=1:10 
    disp(_size)
    B=tril(rand(_size,_size)+ones(_size,_size)) // les elements de la matrice = 1 
    A=B+B'
    tic()
        [L,D]=myldltscale(A)
    temp_ldlt=temp_ldlt+toc()
    tic()
        [L1,U1,P]=mylu(A)
    temp_pivot=temp_pivot+toc()
    tic()
        [L2,U2]=mylu1b(A)
    temp_lu=temp_lu+toc()
    
    end
    mfprintf(fich,"%.16lf %.16lf %.16lf %d \n",temp_ldlt/10,temp_pivot/10, temp_lu/10,_size )
    
end
mclose(fich)
