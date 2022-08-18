clear;clc;close all
%%
[Y Fs] = audioread('sound.wav');
Noise = 0.1 * rand(length(Y), 1);
t = 0:(1/Fs):(length(Y)-1)/Fs;
L=length(Y);
figure
plot(t, Y)
xlim([0,(length(Y)-1)/Fs])
grid on

Y = Y + Noise;
% sound(Y, Fs)
audiowrite('Noise_sound.wav',Y,Fs)


figure
plot(t, Y)
xlim([0,(length(Y)-1)/Fs])
grid on

 
Filt = Q1_Filt;


F=fftshift(fft(Y));
f=Fs*((-L/2):L/2-1)/L;
figure
plot(f,abs(F)/L);
new_y=filter(Filt,Y);
audiowrite('New_sound.wav', new_y,Fs);
figure
plot(t,new_y);
xlim([0,(length(Y)-1)/Fs])
grid on
