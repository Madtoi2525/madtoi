clc;
clear all;
a = imread(' lena.png');
b = double(a);

[row col]= size(b);
h =zeros(row,col);
for n = 1:1:row
    for m = 1:1:col;
        if b(n,m)==0;
            b(n,m) = 1;
        end
            t=b(n,m);
            h(t) = h(t)+1;
    end
end
subplot(2,2,1),imshow(a),title('Original image')
subplot(2,2,2),bar(h),title('Histrogram dark image');
