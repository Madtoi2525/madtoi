clc;
clear all;
Image= imread('');
subplot(1,3,1);imshow(Image);title('Original RGB Image')

Image = rgb2gray(Image);
subplot(1,3,2);imshow(Image);title('Gray RGB Image');

subplot(1,3,3);
imshow(Image,jetcolormap(256));
title('Pseudo Color Image');
