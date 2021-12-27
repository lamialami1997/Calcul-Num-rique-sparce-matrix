set term png size 1800,900
set output "jacobi_converg.png"
set grid
set xlabel "Itération"
set ylabel "Erreur"
set logscale y 3
plot "jacobi.dat" using 2:1 t "Convergence Jacobi" w l;
