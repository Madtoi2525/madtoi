clc;
clear all;
Image=imread('')
Image= rgb2gray(Image);
a = imnoise(Image,'salt & pepper');

Output=immedian(a,[3,3]);

subplot(1,3,1);
imshow(Image);
title('Original Image ');

subplot(1,3,2);
imshow(a);
title('Noisy Image');

subplot(1,3,3);
imshow(Output);
title('Median Filtered Image');
