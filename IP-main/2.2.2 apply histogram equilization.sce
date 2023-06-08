clc;
clear all;

warning off;
 
a = imread(' lena.png');
 
a = rgb2gray(a);
b = size(a);
a = double(a);

 
freq_counts = zeros(1,256);
for i = 1:b(1)
    for j = 1:b(2)
        for k = 0:255
            if a(i,j)==k
                freq_counts(k+1) = freq_counts(k+1)+1;
            end
        end
    end
end

 
pdf = (1/(b(1)*b(2)))*freq_counts;

 
cdf = zeros(1,256);
cdf(1) = pdf(1);
for i = 2:256
    cdf(i) = cdf(i-1)+pdf(i);
end
cdf = round(255*cdf);
 
ep = zeros(b);
for i = 1:b(1)  
    for j = 1:b(2)  
        t = (a(i,j)+1);  
        ep(i,j) = cdf(t);  
    end
end

 
hist2 = zeros(1,256);
for i = 1:b(1)
    for j = 1:b(2)
        for k = 0:255
            if ep(i,j)==k
                hist2(k+1) = hist2(k+1)+1;
            end
        end
    end
end

subplot(2,2,1);
imshow(uint8(a));title('Original image');
subplot(2,2,3);
imshow(uint8(ep));title('Histogram equalized image');
subplot(2,2,2);
plot2d3([0:255],freq_counts);title('Histogram of original image');
subplot(2,2,4);
plot2d3([0:255],hist2);title('Histogram of equalized image');
