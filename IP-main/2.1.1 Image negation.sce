clc;
clear all;

a = imread(' baboon.png');
subplot(1,2,1);
imshow(a)
title('Original image')

[m,n] = size(a);
for i = 1:m
    for j = 1:n
        c(i,j) = 255-a(i,j)
    end
end

subplot(1,2,2);
imshow(c)
title('Negation Image')
