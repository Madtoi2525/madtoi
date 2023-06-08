clear all;
clc;
a = imread('C:\Users\Acer\Downloads\IPCV-4.1.2-win64-bin\IPCV\images\moon.tif');
subplot(2,3,1);
imshow(a);
title('Input Image');
a = double(a);
b = a;
DO = 50;
GL = 0.9;
GH = 1.9;
[m,n] = size(a);
b=b+1;
log_b = log(b);
subplot(2,3,2);
imshow(log_b);
title('Natural Logarithm');
c=fft2(log_b);
subplot(2,3,3);
imshow(uint8(c));
title('Fourier Transform');
dd = fftshift(c);
for u = 1:m
    for v = 1:n
        H(u,v) = (GH-GL)*(1-exp(-1*(sqrt((u-m/2)^2+(v-n/2)^2))^2/DO)^2)+GL;
    end
end
subplot(2,3,4);
mesh(H);
title('Homomorphic filter');
x=dd.*H;
real_x=abs(ifft(x));
subplot(2,3,5);
imshow(real_x);
title('Inverse Fourier Transform');
final = exp(real_x);
subplot(2,3,6);
imshow(uint8(Final));
title('Filtered Image');



