reset
set terminal epslatex color
set output 'messung3.tex'
set xlabel 'Kreisfrequenz [Hz]'
set ylabel 'Impedanz [$\Omega$]'
set key top right

p 'messung3.dat' u (2*pi*$1):($2/$3):(sqrt((0.01/$3)**2+(0.02*$2/$3)**2)) w e t'Messwerte' 

set output
!epstopdf messung3.eps
!rm messung3.eps