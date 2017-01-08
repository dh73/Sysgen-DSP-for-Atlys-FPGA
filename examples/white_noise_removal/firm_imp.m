close all; clear all; clc

% Parámetros para el cálculo de implementación
Fs  = 48000;
Fc  = 7000;

% Normalización de la frecuencia de corte
FNyquist = Fs/2;
Wn       = Fc/FNyquist;

% Elaboración del filtro FIR paso bajos usando los parámetros
% ya calculados para la normalización de la frecuencia. El órden de este
% filtro será de 30.
orden        = 31; % Orden + 1, como especifica la función fir1
coeficientes = fir1(orden, Wn);

% Analisis del filtro
fvtool(coeficientes, 'Fs', Fs);
