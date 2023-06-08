clc;
clear all;

a = imread(' baboon.png');
b = double(a);
subplot(1,2,1);
imshow(a)
title('Original image')

k = 10; // constant value
[m,n] = size(b);
for i = 1:m
    for j = 1:n
        c(i,j) = k*log(1+b(i,j)); // s = k*log(1+r)
    end
end

subplot(1,2,2);
imshow(uint8(c));
title('Log transform image');
