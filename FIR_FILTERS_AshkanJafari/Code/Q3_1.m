clear;clc;close all
%%
img = imread('image_ca.jpg');
figure
imagesc(img)


sobel_filt = fspecial('sobel');
laplace_filt = fspecial('laplacian');
gaussian_filt = fspecial('Gaussian');
disk_filt = fspecial('disk');
avg_filt = fspecial('average');

sobel_img = imfilter(img,sobel_filt);
laplace_img = imfilter(img,laplace_filt);
Gaussian_img = imfilter(img,gaussian_filt);
disk_img = imfilter(img,disk_filt);
avg_img = imfilter(img,avg_filt);

figure
imshow(sobel_img);
title('sobel picture');
figure
imshow(laplace_img);
title('laplacian picture');
figure
imshow(Gaussian_img);
title('Gaussian picture');
figure
imshow(disk_img);
title('disk picture');
figure
imshow(avg_img);
title('average picture');






