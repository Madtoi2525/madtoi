clc;
clear all;
Image= imread('');
subplot(1,3,1);imshow(Image);title('Image in RBG color Space')

HSV = rgb2hsv(Image);
imwrite(HSV,'HSV.tif');
subplot(1,3,2);imshow(HSV);title('Image in HSV Color Space')

CMY = imcomplement(Image);
imwrite(CMY,'CMY.tif');
subplot(1,3,3);imshow(CMY);title('Image in CMY Color Space');
