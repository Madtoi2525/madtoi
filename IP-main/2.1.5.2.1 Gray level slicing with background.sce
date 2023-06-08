clc;
clear all;

a =imread(' Lena_dark.png');
b = double(a);
[m,n] = size(b);
x1 = input("Enter x1:");
x2 = input("Enter x2:");

c = zeros(m,n);
for i = 1:m
    for j = 1:n
        if(b(i,j)>=x1 && b(i,j)<=x2);
            c(i,j) = 255;
        else
            c(i,j) = 0;
        end
    end
end

subplot(1,2,1);
imshow(a);
title("Original image");

subplot(1,2,2);
imshow(uint8(c));
title("Gray level slicing without background");
