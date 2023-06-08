clc;
clear all;

x = [1,2,3;4,5,6;7,8,9];
h = [1,1,1;1,1,1;1,1,1];
y = conv2(x,h);
disp(y,'Linear 2D convolution result y = ')

x = [1,2,3;4,5,6;7,8,9];
h = [1,2,3;4,5,6;7,8,9];
disp(h)
h1 = h(:,$:-1:1)  
disp(h1)
h2 = h1($:-1:1,:)  
disp(h2)
y = conv2(x,h2);
disp(y,'Linear 2D cross sorrelation result y = ')
