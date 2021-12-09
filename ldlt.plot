set term png size 1900,1000

set output "temps_ldlt.png"

set grid

set ylabel "temp _ execution "
set xlabel " matrice nxn"

plot "test_ldlt.dat" u 4:3 with lines title "LU" , "test_ldlt.dat" u 4:2 with lines title "PIVOT_PARTIEL"  , "test_ldlt.dat" u 4:1 with lines title "LDLT" 
