reset
set terminal epslatex color
set output 'phase.tex'
set xlabel '$\omega$ [Hz]'
set ylabel '$\varphi$ [Grad]'
set key top left

p 'messung2.dat' u (2*pi*$1):6 t'Messwerte' 

set output
!epstopdf phase.eps
!rm phase.eps
