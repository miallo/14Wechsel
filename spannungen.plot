reset
set terminal epslatex color
set output 'spannungen.tex'
set xlabel '$\omega$ [Hz]'
set ylabel 'Spannung [V]'
set key top right

p 'messung2.dat' u (2*pi*$1):2:(0.01) w e t'$U$',\
'' u (2*pi*$1):3:(0.01) w e t'$U_{L+R}$',\
'' u (2*pi*$1):4:(0.01) w e t'$U_{C}$'

set output
!epstopdf spannungen.eps
!rm spannungen.eps
