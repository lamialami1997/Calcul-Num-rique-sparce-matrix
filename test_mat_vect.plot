set term png size 1900,1000

set output "temps_mat_vect.png"

set grid

set ylabel "temp _ execution "
set xlabel " matrice nxm"

plot "test_mat_vec.dat" u 3:1 with lines title "matrice*vect" , "test_mat_vec.dat" u 3:2 with lines title "CSR*VECT"  
