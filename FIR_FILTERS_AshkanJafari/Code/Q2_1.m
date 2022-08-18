clear;clc;close all
%%
Img = imread('a.tif');
Img(1:344,:)=0;
Img(345:688, :) = 1;
figure
imagesc(Img)
res = Apply_Filter(Img, 'loss', 'Gaussian', 10);
figure
imagesc((abs(res)))
title('loss Gaussian 10');

