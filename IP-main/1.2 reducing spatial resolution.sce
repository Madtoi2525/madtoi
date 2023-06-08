clc;
clear all;

I=imread('');
subplot(2,3,1);
imshow(I);
title('original image 512*512');

I2=imresize(I,0.5);
subplot (2,3,2);
imshow (I2);
title('original image 128*128');

I3=imresize(I,0.25);
subplot (2,3,3);
imshow (I3);
title('original image 64*64');

I4=imresize(I,0.125);
subplot (2,3,4);
imshow (I4);
title('original image 32*32');

I5=imresize(I,0.0625);
subplot (2,3,5);
imshow (I5);
title('original image 16*16');

I6=imresize(I,0.3125);
subplot (2,3,6);
imshow (I6);
title('original image 8*8');
