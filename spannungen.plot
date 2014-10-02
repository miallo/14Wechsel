reset
set terminal epslatex color
set output 'spannungen.tex'
set xlabel '$\omega$ [kHz]'
set ylabel 'Spannung [V]'
set key top right

p 'messung2.dat' u (2*pi*$1/1000):2:(0.01) w e t'$U$',\
'' u (2*pi*$1/1000):3:(0.01) w e t'$U_{L+R}$',\
'' u (2*pi*$1/1000):4:(0.01) w e t'$U_{C}$'

set output
!epstopdf spannungen.eps
!rm spannungen.eps
