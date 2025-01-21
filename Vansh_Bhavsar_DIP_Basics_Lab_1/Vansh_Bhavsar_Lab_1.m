% DIP basics
%Created By Vansh Bhavsar
clc;
clear all;
close all;

% Reading the image
I = imread('https://media.istockphoto.com/id/847144522/photo/blue-peacock.jpg?s=612x612&w=0&k=20&c=6uRUjGEcw27FLtwhjy-E8ERJP-2MVbgchfNz0qS8D5A=');

% Taking matrix of each red, blue, and green

R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);

% Taking average of 3 for grayscale
Ig = (R + G + B) / 3;

% To calculate threshold
count = sum(Ig(:));
threshold = count / (612 * 374);

% Giving value 1 for above and 0 for below value of threshold
Ib = Ig > threshold;

% Taking only last matrix and changing other 1, 2 all values to zero
Iblue = I;
Iblue(:,:,1) = 0;
Iblue(:,:,2) = 0;

%for Red
Ired = I;
Ired(:,:,2) = 0;
Ired(:,:,3) = 0;

% for Green
Igreen = I;
Igreen(:,:,1) = 0;
Igreen(:,:,3) = 0;

% Plotting all the images
subplot(2,3,1);
imshow(I);
title("Original Image");

subplot(2,3,2);
imshow(Ig, []);
title("Grayscale Image");

subplot(2,3,3);
imshow(Ib);
title("B&W Image");

subplot(2,3,4);
imshow(Ired);
title("Red Image");

subplot(2,3,5);
imshow(Igreen);
title("Green Image");

subplot(2,3,6);
imshow(Iblue);
title("Blue Image");
