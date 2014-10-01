reset
set terminal epslatex color
set output 'messung3.tex'
set xlabel 'Kreisfrequenz [Hz]'
set ylabel 'Impedanz [$\Omega$]'
set key top right

f(x)=sqrt((R**2+(x*L-x*R**2*C-x**3*L**2*C)**2)/((x*C*R)**2+(1-x**2*L*C)**2))

set fit logfile 'messung3.log'
fit f(x) 'messung3.dat' u (2*pi*$1):($2/$3):(sqrt((0.01/$3)**2+(0.02*$2/$3)**2)) via R,L,C
p 'messung3.dat' u (2*pi*$1):($2/$3):(sqrt((0.01/$3)**2+(0.02*$2/$3)**2)) w e t'Messwerte',\
f(x) 

set output
!epstopdf messung3.eps
!rm messung3.eps