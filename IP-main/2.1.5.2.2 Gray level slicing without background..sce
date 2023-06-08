clc;
clear all;

a = imread(' Lena_dark.png');
b = double(a);
[m,n] = size(b);
x1 =input("Enter x1:");
x2 =input("Enter x2:");

d = zeros(m,n);
for i = 1:m
    for j = 1:n
        if(b(i,j)>=x1 && b(i,j)<=x2);
            d(i,j) = 255;
        else
            d(i,j) = b(i,j);
        end
    end
end

subplot(1,2,1);
imshow(a);
title("Original image");

subplot(1,2,2);
imshow(uint8(d));
title("Gray level slicing with background");
