clc;
clear;
Image=imread('');
NoisyImage=imnoise(Image,'salt & pepper');
F1=fspecial('average',3);
FilterImage=imfilter(NoisyImage,F1)

subplot(1,3,1);
imshow(Image);
title('Original Image ');

subplot(1,3,2);
imshow(NoisyImage);
title('Noisy Image');

subplot(1,3,3);
imshow(FilterImage);
title('Filtered Image');
