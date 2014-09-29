reset
set terminal epslatex color
set output 'phase.tex'
set xlabel '$\omega$ [kHz]'
set ylabel '$\varphi$ [Grad]'
set key top left

f(x)=atan((x*L-1/(x*C))/R)
R=0.068
C=1.8
L=0.35


set fit logfile 'phase.log'
fit f(x) 'messung2.dat' u (2*pi*$1/1000):($6/180*pi):(pi/90) via L,C,R

p 'messung2.dat' u (2*pi*$1/1000):($6/180*pi):(pi/90) w e t'Messwerte', f(x)

set output
!epstopdf phase.eps
!rm phase.eps
