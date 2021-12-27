function [A,b] = GB_poisson1D(n,T0,T1)
    A = zeros(n, n);
    for i = 1:n
        A(i, i) = 2;
    end

    for i = 1:n-1
        A(i + 1, i) = -1;
        A(i, i + 1) = -1;
    end
    
    b = zeros(n, 1);
    b(1) = T0;
    b(n) = T1;
endfunction



iter_max = 50000;
[A,b] = GB_poisson1D(100,-5,5);
[x,nb_iter,err] = richardson(A,b,1e-10,iter_max,1/2);
disp(err(length(err)));

[A,b] = GB_poisson1D(100,-5,5);

[x,nb_iter,err2] = jacobi(A,b,1e-10,50000);

disp(err2(length(err2)));
