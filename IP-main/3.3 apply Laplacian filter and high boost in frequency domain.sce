clc;
a = imread('C:\Users\Acer\Downloads\IPCV-4.1.2-win64-bin\IPCV\images\moon.tif');
a = im2double(a);
subplot(2,2,1);
imshow(a);
title('Input Image');
[m,n] = size(a);
DO=50;
A = fft2(a);
A_shift= fftshift(A);
A_real= abs(A_shift);
h = zeros(m,n);
d = zeros(m,n);

for u = 1:m
    for v = 1:n
        d(u,v) = sqrt((u-(m/2))^2+(v-(n/2))^2);
        if(d(u,v)<=DO)
            h(u,v) =0;
        else
            h(u,v) =1;
        end
    end
end
ahb= 2.0;
h1 = (ahb-1)+h;
x = A_shift.*h;
x1 = A_shift.*h1;
xa = abs(ifft(x));
xb = abs(ifft(x1));

subplot(2,2,2);
imshow(xa);
title('High-Pass Image');
subplot(2,2,3);
imshow(xb);
title('High Boost Image');
subplot(2,2,4);
imshow(a+xa);
title("Input + High-Pass Laplacian Image");




