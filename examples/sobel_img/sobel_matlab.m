close all
clear all
clc

%% Leer la imagen peppers.png y convertirla a escala
%% de grises
I = imread('peppers.png');
I8 = im2uint8(I);
IG = rgb2gray(I8);

%% Aplicacion del filtro sobel
IBW = edge(IG, 'prewitt');
figure;
imshow (IBW)