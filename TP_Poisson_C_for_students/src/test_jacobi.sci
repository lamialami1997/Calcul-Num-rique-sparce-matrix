exec poisson_1D.sci
exec jacobi.sci

[A,b] = GB_poisson1D(100,-5,5);
[x,nb_iter,err] = jacobi(A,b,1e-10,50000);
disp(err($));
[fichier, mod] = mopen("../jacobi.dat", "w");
for i = 1:length(err)
    mfprintf(fichier,"%.16lf %d\n",err(i),i);
end
mclose(fichier);
