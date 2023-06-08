close;
clear all;
clc
img = imread('');
img = rgb2gray (img)
[r, c, s]=size (img)
k = [1 2 3 4 5 6 7 8]
for i=1:length (k)
    d=2^i;
    z = round(img/d);
    subplot(3, 3, i)
    imshow(z*d);
    
end


