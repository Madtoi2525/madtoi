clc;
clear all;

a = imread(' Lena_dark.png');
b = double(a);
[m,n] = size(b); // to get digital image in the form of mstrix m by n
r1 = input('Enter r1:');
s1 = input('Enter s1:');
r2 = input('Enter r2:');
s2 = input('Enter s2:');

M = s1/r1;
N = (s2-s1)/(r2-r1);
O = (255-s2)/(255-r2);

ics = zeros(m,n);
for i = 1:m
    for j = 1:n
        if(0<b(i,j) && b(i,j)<r1)
            ics(i,j) = M*b(i,j);
        else if(r1<b(i,j) && b(i,j)<r2)
            ics(i,j) = N*b(i,j)-N*r1+s1;
        else if(r2<b(i,j) && b(i,j)<255)
                ics(i,j) = O*(b(i,j)-r1)+s2;
        end
        end
        end
    end      
end

subplot(1,2,1);
imshow(a);
title('Original image');
subplot(1,2,2);
imshow(uint8(ics));
title('Contrast stretch image');
