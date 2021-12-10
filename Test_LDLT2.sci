exec LDLT.sci

_size = 5;
B=tril(rand(_size,_size)+ones(_size,_size)); // les elements de la matrice = 1 
A=B+B';
[L,D]=myldltscale(A);
disp(A);
disp(L*D*L');
disp(norm(A-(L*D*L')));
