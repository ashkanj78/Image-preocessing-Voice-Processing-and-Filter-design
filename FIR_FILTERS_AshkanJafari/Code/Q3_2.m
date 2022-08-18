clear;clc;close all
%%
mack1 = [-1 -1 -1;-1 8 -1;-1 -1 -1];
mack2 = [-1 -1 -1;2 2 2;-1 -1 -1];
mack3 = [0 0 0;0 1 0;0 0 0];
mack4 = [0 -1 0;-1 5 -1;0 -1 0];
mack5 = [1 2 1;2 4 2;1 2 1]/16;

img = imread('image_ca.jpg');
Img = double(rgb2gray(img));

new_img1 = conv2(Img,mack1);
new_img2 = conv2(Img,mack2);
new_img3 = conv2(Img,mack3);
new_img4 = conv2(Img,mack4);
new_img5 = conv2(Img,mack5);

figure
imshow(uint8(abs(new_img1)));
figure
imshow(uint8(abs(new_img2)));
figure
imshow(uint8(abs(new_img3)));
figure
imshow(uint8(abs(new_img4)));
figure
imshow(uint8(abs(new_img5)));