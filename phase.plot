reset
set terminal epslatex color
set output 'phase.tex'
set xlabel '$\omega$ [Hz]'
set ylabel '$\varphi$ [Grad]'
set key top left

f(x)=atan((x*L-1/(x*C))/R)
set fit logfile 'phase.log'
fit f(x) 'messung2.dat' u (2*pi*$1):($6/180*pi):(pi/180) via L,C,R

p 'messung2.dat' u (2*pi*$1):($6/180*pi):(pi/180) w e t'Messwerte', f(x)

set output
!epstopdf phase.eps
!rm phase.eps
