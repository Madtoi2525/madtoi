clc;
I=imread('C:\Users\Acer\Downloads\IPCV-4.1.2-win64-bin\IPCV\images\checkerbox.png');
subplot(1,3,1);
imshow(I);
title('Original Imgae');

I= double(I);
J=fft2(I);
subplot(1,3,2);
imshow(J);
title('Fourier Transform');

L=fftshift(real(J));
subplot(1,3,3);
imshow(L);
title('Shifted Fourier Transform');
