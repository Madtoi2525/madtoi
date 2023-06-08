clc;
clear all;
image = imread(" checkerbox.png");
image = rgb2gray(image);
edge1 = edge(image,'sobel');
edge2 = edge(image,'prewitt');
edge3 = edge(image,'canny');
subplot(2,2,1)
imshow(image);
title("Original Image ");
subplot(2,2,2);
imshow(edge1);
title('sobel image');
subplot(2,2,3);
imshow(edge2);
title('prewitt image');
subplot(2,2,4);
imshow(edge3);
title('canny image');
