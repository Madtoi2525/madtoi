clc;
a = imread('C:\Users\Acer\Downloads\IPCV-4.1.2-win64-bin\IPCV\images\cameraman.tif');
a = im2double(a);
subplot(2,3,1);
imshow(a);
title('Input Image');
[m,n] = size(a);
DO=30;
A = fft2(a);
subplot(2,3,2);
imshow(uint8(abs(A)));
title('F.T. of i/p without shift');
A_shift= fftshift(A);
A_real= abs(A_shift);
subplot(2,3,3);
imshow(uint8(A_real));
title('F.T. of i/p after shift');


d = zeros(m,n);
order = 4;
for u = 1:m
    for v = 1:n
        d(u,v) = sqrt((u-(m/2))^2+(v-(n/2))^2);
        h(u,v) = 1/((1+(DO/d(u,v))^(2^order)));
    end
end
subplot(2,3,4);
imshow(h);
title('Butterworth High-Pass filter');
subplot(2,3,5);
mesh(h);
title('Surface Plot BLPF');
B=A_shift.*h;
B_inverse = ifft(B);
B_real = abs(B_inverse);
subplot(2,3,6);
imshow(B_real);
title("Butterworth High-Pass Image");



