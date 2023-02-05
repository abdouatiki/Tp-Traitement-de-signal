clear all
close all
clc

%Tracer le signal x(t).
fe=1e4;
n=5000;
te=1/fe;
t=0:te:(n-1)*te;
x=1.2*cos(2*pi*440*t+1.2)+3*cos(2*pi*550*t)+0.6*cos(2*pi*2500*t);
subplot(5,1,1)
plot(t(1:100),x(1:100))
xlabel('temps')
ylabel('amplitude')
title(' Représentation temporele du signal ')

%afficher le spectre d amplitude
f=(0:n-1)*(fe/n);
y=fft(x);
subplot(5,1,2)
plot(f,2*(abs(y)/n))
xlabel('fréquence')
ylabel('amplitude')
title('Représentation fréquentiel 1 du signale');

% Effectuez un décalage circulaire centré sur zéro pour y
z=fftshift(y);
subplot(5,1,3)
fc=(-n/2:n/2-1)*(fe/n);
plot(fc,2*abs(z)/n)
xlabel('fréquence')
ylabel('amplitude')
title('Représentation fréquentiel du signale centrée à 0')

% Génération du bruit
xnoise = x+10*randn(size(x));
ynoise = fft(xnoise);
r1=2*(abs(ynoise)/n);
subplot(5,1,4)
plot(f,r1)

z1=fftshift(r1);
p = (z1.^2)/n;
subplot(5,1,5)
plot(fc,p)

xlabel('fréquence')
ylabel('amplitude')
title('le spectre de la puissance du signal bruité') % 10 fois



