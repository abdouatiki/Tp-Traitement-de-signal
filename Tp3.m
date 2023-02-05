clear all
close all
clc

load('ecg.mat')

Fs = 500;
Ts=1/Fs;
N=length(ecg);
t=(0:N-1)*Ts;
subplot(3,1,1)
plot(t,ecg)

xlabel('temps(s)')
ylabel('ampitude')


f=(0:N-1)*(Fs/N);
x=fft(ecg);
subplot(3,1,2)
plot(f,(2*abs(x))/N)
xlim([-20 500])
xlabel('fréquence')
ylabel('amplitude')


% Conception du filtre ideal pass_haut

pass_haut = zeros(size(ecg));
fc = 5;
subplot(3,1,3)
index_fc = ceil((fc*N)/Fs);
pass_haut(1:index_fc) = 1;
pass_haut(N-index_fc+1:N) = 1;
plot(f,pass_haut,"linewidth",1.5)
xlim([0.5 1.5])

% Filtrage

fshift = (-N/2:N/2-1)*(Fs/N);
x_filter_freq = pass_haut.*x;
x_filter_temp = ifft(x_filter_freq,"symmetric");

subplot(5,1,4)

plot(fshift, fftshift(abs(fft(x_filter_temp))))
xlim([0.5 1.5])
subplot(5,1,5)
plot(t,ecg-x_filter_temp)
xlim([0.5 1.5])