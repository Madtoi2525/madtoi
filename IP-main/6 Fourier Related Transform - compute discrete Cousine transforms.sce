clc;
clear all;
a = imread("");
dctImg = imdct(a);
subplot(1,2,1)
imshow(a);
title('Original Image by Nitin Sutar');
subplot(1,2,2);
imshow(dctImg,rainbowcolormap(32));
title('Discrete Cosine Transform');
