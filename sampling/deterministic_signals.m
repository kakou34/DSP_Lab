clear all; 
close all; 
clc; 

%% Question 1 
fd=1000; 
nt=10; 
n=100; 
period=1/fd; %length of one period in terms of time
t=linspace(0,period*nt,n); %total length of time of ten periods divided into 100 points
sd=sin(2*pi*fd*t); %sinosoidal signal for the time period t

figure, plot(t,sd, 'b.-')
xlabel("time");
ylabel("Sinusoidal signal");

%% Question 2
Sd = fft(sd);
abs_sd = abs(fftshift(Sd));
l=length(Sd);  
disp(["The length of the DFT of sd is ", l]);
bins = (0: l-1);
fs=fd*2; % Frequency of sampling
freq = bins * fs/l;
plot(freq, abs_sd);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('DFT Magnitude of Sd (shifted)');

%% Question 3
fd=500; nt=5.5; n=80; 
period=1/fd; %length of one period in terms of time
t=linspace(0,period*nt,n); %total length of time of ten periods divided into 100 points
sd=sin(2*pi*fd*t); %sinosoidal signal for the time period t
figure, plot(t,sd, 'b.-'), xlabel("time"); ylabel("Sinusoidal signal");

Sd = fft(sd);
abs_sd = abs(fftshift(Sd));
l=length(Sd);  
disp(["The length of the DFT of sd is ", l]);
bins = (0: l-1);
fs=fd*2; % Frequency of sampling
freq = bins * fs/l;
figure;
stem(freq, abs_sd); xlabel('Frequency (Hz)'); ylabel('Magnitude');
title('DFT Magnitude of Sd (shifted)');

%% Question 4
wl = 10;   % wave Length
imp = 10;  % Inter-Pulse Interval
Nt =  5;   % Number Of Cycles
ts = Nt/imp; % sampling interval
sq = repmat([ones(1,wl) ones(1,imp)*(-1)], 1, Nt); % periodic wave
t = 0:length(sq)-1;                            % Time Vector
figure;
plot(t, sq, 'LineWidth',1.5)
ylabel('Amplitude'), xlabel('time'), title('Square Wave signal')

%% Fourier Transform
sq_fft = fft(sq); l = length(sq_fft);
disp(["The length of the DFT of sq is ", l]);
f = (0:length(sq)-1)/ts;
figure;
stem(f,abs(fftshift(sq_fft)))
title('DFT Magnitude of Square Signal')
xlabel('Frequency'), ylabel('Magnitude')