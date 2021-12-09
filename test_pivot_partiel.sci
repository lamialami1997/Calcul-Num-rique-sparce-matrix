//exec pivot_partiel.sci
size_ = 50;

A = rand(size_,size_) + ones(size_,size_);
tic();
[L,U,P] = mylu(A);
toc();
disp(toc())


