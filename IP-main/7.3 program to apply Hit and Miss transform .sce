clear;
clc;

a=[0 0 0 0 0 0 ;
   0 0 1 1 0 0 ;
   0 0 1 1 0 0 ;
   0 0 0 0 0 0 ;
   0 0 1 1 0 0 ;
   0 0 0 0 0 0 ];

a = im2bw(a,0.5); 

se = [0 0 0 0;
      0 1 1 0;
      0 1 1 0;
      0 0 0 0];
      
s2 = imhitmiss(a,se);

subplot(1,2,1);imshow(a);title("Original Image  ");
subplot(1,2,2);imshow(s2);title("Hit Miss Image");
   
