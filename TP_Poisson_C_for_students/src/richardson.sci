exec poisson_1D.sci
exec jaccobi.sci
function [x,nb_iter,err]=richardson(A,b,T,iter_max,alpha)
    err=list();
    x=zeros(size(A,1),1);
    nb_iter=0;
    res=norm(b - A * x)/norm(b);
    err($+1)=res;
        while res>T && nb_iter<iter_max do 
             nb_iter=nb_iter+1;
             x = x + alpha * (b - A * x);
             res=norm(b - A * x)/norm(b);
             err($+1)=res;
            
        end
endfunction 
