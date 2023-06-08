a=imread('');
b=imnoise(a, 'gaussian');
subplot(1,2,1);
imshow(a);
title('Original Image');
subplot(1,2,2);
imshow(b);
title('Noisy Image');
imwrite(b,'C:\Program Files\scilab-6.0.2\IPCV\images\gaussian.jpg')
