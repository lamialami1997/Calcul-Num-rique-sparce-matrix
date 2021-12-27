exec poisson_1D.sci
exec richardson.sci
iter_max = 50000;
[A,b] =GB_poisson1D(100,-5,5);

[x,iter,err] = richardson(A,b,1e-10,iter_max,1/2);
disp(err($));

[fic, mod] = mopen("../richardson1_2.dat", "w");
for i = 1:length(err)
        mfprintf(fic,"%d %.16lf\n",i,err(i));
   
end
mclose(fic);


[x,iter,err] = richardson(A,b,1e-10,iter_max,1/3);
disp(err($));
[fic, mod] = mopen("../richardson1_3.dat", "w");
for i = 1:length(err)
        mfprintf(fic,"%d %.16lf\n",i,err(i));
   
end
mclose(fic);
[x,iter,err] = richardson(A,b,1e-10,iter_max,1/4);
disp(err($));

[fic, mod] = mopen("../richardson1_4.dat", "w");
for i = 1:length(err)
        mfprintf(fic,"%d %.16lf\n",i,err(i));
   
end
mclose(fic);
[x,iter,err] = richardson(A,b,1e-10,iter_max,1/5);
disp(err($));
[fic, mod] = mopen("../richardson1_5.dat", "w");
for i = 1:length(err)
        mfprintf(fic,"%d %.16lf\n",i,err(i));
   
end
mclose(fic);
[x,iter,err] = richardson(A,b,1e-10,iter_max,1/6);
disp(err($));
[fic, mod] = mopen("../richardson1_6.dat", "w");
for i = 1:length(err)
        mfprintf(fic,"%d %.16lf\n",i,err(i));
   
end
mclose(fic);






