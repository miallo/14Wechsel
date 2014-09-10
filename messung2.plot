reset
set terminal epslatex color
set output 'messung2.tex'
set xlabel 'Kreisfrequenz [Hz]'
set ylabel 'Impedanz [$\Omega$]'
set key top right

p 'messung2.dat' u (2*pi*$1):($2/$5):(sqrt((0.01/$5)**2+(0.02*$1/$5)**2)) w e t'Messwerte' 

set output
!epstopdf messung2.eps
!rm messung2.eps
