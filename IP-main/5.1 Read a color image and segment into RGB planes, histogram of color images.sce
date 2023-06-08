clc;
clear all;
Image=imread('');
r=size(Image,1);
c=size(Image,2);

R=zeros(r,c,3);
G=zeros(r,c,3);
B=zeros(r,c,3);

R(:,:,1)=Image(:,:,1);
G(:,:,2)=Image(:,:,2);
B(:,:,3)=Image(:,:,3);
subplot(2,2,1);imshow(uint8(R));title('Red Component Image');
subplot(2,2,2);imshow(uint8(G));title('Green Component Image');
subplot(2,2,3);imshow(uint8(B));title('Blue Component Image');
nBins = 256;

[yR,x] = imhist(Image(:,:,1),nBins);
[yG,x] = imhist(Image(:,:,2),nBins);
[yB,x] = imhist(Image(:,:,3),nBins);

subplot(2,2,4)
plot(x,yR,x,yG,x,yB,"Linewidth",2);
xlabel("RGB Intensity");
ylabel("No. of Pixels");
