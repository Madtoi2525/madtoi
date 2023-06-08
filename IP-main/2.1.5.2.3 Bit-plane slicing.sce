clc;
clear all;

a = imread(' lena.png');
b = double(a);

for i = 1:8
    f = bitget(b,i)
    
subplot(2,4,i);
imshow(f);
title("Bit plane "+string(i));
end
