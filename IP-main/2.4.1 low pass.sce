clc;
clear all;

img = imread(' morpex.png');
f = double(img);
[m,n] = size(f);
w = [1 1 1 ;1 1 1 ;1 1 1];
for i = 2:m-1
    for j = 2:n-1
        b(i,j) = (w(1)*f(i-1,j+1)+w(2)*f(i,j+1)+w(3)*f(i+1,j+1)+w(4)*f(i-1,j)+w(5)*f(i,j)+w(6)*f(i+1,j)+w(7)*f(i-1,j-1)+w(8)*f(i,j-1)+w(9)*f(i+1,j-1))
    end
end

subplot(1,2,1),imshow(img),title('Original image');
subplot(1,2,2),imshow(uint8(b)),title('Low Pass image');
