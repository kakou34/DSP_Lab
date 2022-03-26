clear all; 
close all; 
clc;

%% Question 1
samples=1000000; %10^6
%samples= 1048576;%2^20
Sn= randn(samples,1);
figure; n=1:1000000;
stem(n,Sn), title('white noise');

%% Question 2: 
h = histfit(Sn, 50); % draw the histogram with nbins=50 and estimate the pdf 

%% Question 3 
Fs = 1000; % sampling rate of 1000 Hz
sn_fft = fft(Sn);
l = length(sn_fft); disp(l);
frequency=(0:l-1)*Fs/l;
figure, stem(frequency(1:200),abs(fftshift(sn_fft(1:200))));

xlabel('Frequency (Hz)'); ylabel('Magnitude');
title('Magnitude of the Discrete Fourier Transform of Sn');


%% Question 4 
bins = 1:2:1000000;
Sb = zeros(1, length(bins));
for i=1:length(Sb)
    Sb(1, i) = Sn(bins(1,i), 1);
end
figure;
stem(bins, Sb), title("Sampled Sn");

% Discrete Fourier Transform 
Fs = 1000; % sampling rate of 1000 Hz
sb_fft = fft(Sb);
l = length(sb_fft); disp(l);
frequency=(0:l-1)*Fs/l;
figure, stem(frequency(1:200),abs(fftshift(sb_fft(1:200))));

xlabel('Frequency (Hz)'); ylabel('Magnitude');
title('Magnitude of the Discrete Fourier Transform of Sb');
% 
%% Question 5
Sc = sin(Sn);
bins = 1:1000000;
figure;
stem(bins(1:200), Sc(1:200)), title("Sc");
% Discrete Fourier Transform 
Fs = 1000; % sampling rate of 1000 Hz
sc_fft = fft(Sc);
l = length(sc_fft); disp(l);
frequency=(0:l-1)*Fs/l;
figure, stem(frequency(1:200),abs(fftshift(sc_fft(1:200))));

xlabel('Frequency (Hz)'); ylabel('Magnitude');
title('Magnitude of the Discrete Fourier Transform of Sc');
% 
%% Last question: Uniform Noise
% Question 1
samples=1000000; %10^6
%samples= 1048576;%2^20
Su= rand(samples,1);
figure; n=1:1000000;
stem(n,Su), title('Uniform noise');

% Question 2:

histogram(Su, 50); % draw the histogram with nbins=50 and estimate the pdf 

% Question 3 
% Discrete Fourier Transform 
Fs = 1000; % sampling rate of 1000 Hz
su_fft = fft(Su);
l = length(su_fft); disp(l);
frequency=(0:l-1)*Fs/l;
figure, stem(frequency,abs(fftshift(su_fft)));

xlabel('Frequency (Hz)'); ylabel('Magnitude');
title('Magnitude of the Discrete Fourier Transform of Su');



