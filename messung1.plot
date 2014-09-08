reset
set terminal epslatex color
set output 'messung1.tex'
set xlabel 'Quadrat der Kreisfrequenz [s$^{-2}$]'
set ylabel 'Quadrat der Impedanz [$\Omega$]'
set key top left

#set xrange[0:0.001]

f(x)=m*x+b

set fit logfile 'messung1.log'
fit f(x) 'messung1.dat' u ((2*pi*$1)**2):(($2/$3*1000)**2) via m,b
p 'messung1.dat' u ((2*pi*$1)**2):(($2/$3*1000)**2) t'Messwerte' ,\
f(x) lt -1 t'Regressionsgerade'

set output
!epstopdf messung1.eps
!rm messung1.eps
