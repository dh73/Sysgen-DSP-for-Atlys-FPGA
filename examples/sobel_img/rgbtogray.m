close all;
clear all;
clc;

disp('Convert from RGB to grayscale');
I=imread('/home/diego/dani.jpg');
figure(1);
imshow(I);

% Using for loop
I0=uint8(zeros(size(I, 1), size(I, 2)));
for i=1:size(I, 1)
    for j=1:size(I, 2)
        I0(i, j)=0.2989*I(i, j, 1)+0.5870*I(i, j, 2)+0.22*I(i, j, 3);
    end
end

figure(2);
title('RGB to Gray using for loop');
imshow(I0);

figure(3);
title('RGB to gray WITHOUT using for loop');
% Faster implementation :)
I1=0.2989*I(:,:,1)+0.5870*I(:,:,2)+0.1140*I(:,:,3);
imshow(I1);