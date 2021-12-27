set term png size 1800,900
set output "richardson_converg.png"
set grid
set xlabel "Itération"
set ylabel "Erreur"
set logscale y 3
plot "richardson1_2.dat" using 1:2 t "alpha = 1/2" w l,"richardson1_3.dat" using 1:2 t "alpha = 1/3" w l,"richardson1_4.dat" using 1:2 t "alpha = 1/4" w l,"richardson1_5.dat" using 1:2 t "alpha = 1/5" w l,"richardson1_6.dat" using 1:2 t "alpha = 1/6" w l;
