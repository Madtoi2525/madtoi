
clc;
close ;

m = input('Length of the image in inches');
n = input('Height of the image in inches');
N = 400;  
N2 = 2* N ; 
Fs = m*N2 * n * N2 ;
disp ( Fs , 'Number of samples required to preserve the information in the image = ' )

