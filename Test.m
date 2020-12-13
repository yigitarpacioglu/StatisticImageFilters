clc;
clear all;
close all;

%====================== Min-Max-Mean Filters ========================%
resim=input('Please enter number for desired object image\n 1:Duck\n 2:Tennis Ball\n 3:Candy Box\n 4:Cameraman\n 5:Butterfly\n 6:Planes\n');
img = imread(sprintf('%d.png',resim));
[row,col,channel]=size(img);

if channel==3
    img=double(rgb2gray(img));
else
    img=double(img);
end

figure (1)
imshow(uint8(img)), title('Original Image')
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);

%- Min Filter          => minF(input_image,filter size)
%- Max Filter          => minF(input_image,filter size)
%- Mean Filter         => mean(input_image,filter size)


Averaged_Image = meanF(img,15);
Min_Image=minF(img,15);
Max_Image=maxF(img,15);

figure (2)
subplot(2,2,1),imshow(uint8(img)),title('Original Image');
subplot(2,2,2),imshow(uint8(Averaged_Image)),title('Mean Filtered Image');
subplot(2,2,3),imshow(uint8(Min_Image)),title('Minimum Filtered Image');
subplot(2,2,4),imshow(uint8(Max_Image)),title('Maximum Filtered Image');

set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);

