reset
set terminal epslatex color
set output 'spannungen.tex'
set xlabel '$\omega$ [kHz]'
set ylabel 'Spannung [V]'
set key top right

f(x)=1/(x*C)
set fit logfile 'spannungen.log'
fit f(x) 'messung2.dat' u (2*pi*$1/1000/$5):4:(0.01) via C

p 'messung2.dat' u (2*pi*$1/1000):2:(0.01) w e t'$U$',\
'' u (2*pi*$1/1000):3:(0.01) w e t'$U_{L+R}$',\
'' u (2*pi*$1/1000):4:(0.01) w e t'$U_{C}$',\
'' u (2*pi*$1/1000):(f(2*pi*$1/1000)*$5) t'$U_C$-Fit'

set output
!epstopdf spannungen.eps
!rm spannungen.eps
