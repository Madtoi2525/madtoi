clc;
a = imread('C:\Users\Acer\Downloads\IPCV-4.1.2-win64-bin\IPCV\images\cameraman.tif');
a = im2double(a);
subplot(2,3,1);
imshow(a);
title('Input Image');
[m,n] = size(a);
A = fft2(a);
subplot(2,3,2);
imshow(uint8(abs(A)));
title('F.T. of i/p without shift');
A_shift= fftshift(A);
A_real= abs(A_shift);
subplot(2,3,3);
imshow(uint8(A_real));
title('F.T. of i/p after shift');
DO = 50;
d = zeros(m,n);
order =1;
for u = 1:m
    for v = 1:n
        d = sqrt((u-(m/2))^2+(v-(n/2))^2);
        h(u,v) = exp(-(d^2)/(2*DO.^2));
    end
end
subplot(2,3,4);
imshow(h);
title('Gaussian Low-Pass filter');
subplot(2,3,5);
mesh(h);
title('Surface Plot GLPF');
H_low = A_shift.*h;
H_low_shift = fftshift(H_low);
H_low_shift = ifft(H_low_shift);
H_real = abs(H_low_shift);
subplot(2,3,6);
imshow(H_real);
title("Gaussian Low-Pass Image");

