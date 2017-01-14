% Señal de prueba para ejercitar el filtro fir.
% Parametros: fsenBase=1KHz, fsenRuido=1KHz:15KHz;
% Abase=1, Aruido=0.5;
% Fs=48KHz, nmuestras=300;
close all; clear all; clc

Fs        = 48000;
nmuestras = 300;
Abase     = 1;
Aruido    = 0.5;
fsenBase  = 1000;
fsenRuido = 15000;

F = [fsenBase fsenRuido];
A = [Abase Aruido];

% Generacón del vector de tiempo para el muestreo
t = (0:nmuestras-1)/Fs;

% Generación de la señal contaminada
Senmix = A * sin(2*pi*F'*t);

% Conversión del dominio del tiempo a dominio de frecuencia
% de la señal Senmix, para efectos de ilustración.
Freq        = fft(Senmix);
S2          = abs(Freq/nmuestras);
S1          = S2(1:nmuestras/2+1);
S1(2:end-1) = 2*S1(2:end-1);
f           = Fs*(0:(nmuestras/2))/nmuestras;

% Gráfico de la componente generada en los dominos de la 
% frecuencia y tiempo
figure
grid on
subplot(2,2,1)
plot(Senmix)
title('Suma de la senal creada por las dos componentes senoidales')
xlabel('Muestras')
ylabel('Amplitud')
subplot(2,2,2)
plot(f,S1)
xlabel('f (Hz)')
ylabel('|S1(f)|')
title('Espectro en amplitud')