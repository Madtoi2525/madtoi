clc;
clear all;
Image=imread('');
a = imnoise(Image,'salt & pepper');
[m,n]=size(Image);

for i=2:m-1
    for j=2:n-1
        output(i,j)=median([a(i-1,j+1),a(i,j+1),a(i+1,j+1),a(i-1,j),a(i+1,j),a(i-1,j-1),a(i,j-1),a(i+1,j-1)]);
end
end

subplot(1,3,1);
imshow(Image);
title('Original Image');

subplot(1,3,2);
imshow(a);
title('Noisy Image');

subplot(1,3,3);
imshow(output);
title('Median Filtered Image');
