clear all; 
close all; 
clc;

%% Question 1
N=64;
Ts=1/N; Fs=N; df=Fs/N; % sampling
Im(N/8:N/4,N/4+1:N/2) =1;
Im(1:N/4,N/2+1:N) = Im;
Im(N/4+1:N/2,:) = Im;
Im(N/2+1:3*N/4,:) = Im(1:N/4,:);
Im(3*N/4+1:N,:) = Im(1:N/4,:);
figure; 
imshow(Im, []);

%% Question 2
If = fft2(Im);
If_shifted = fftshift(If);
If_real = real(If_shifted);
If_imag = imag(If_shifted);
If_abs = abs(If_shifted);
If_phase = (180/pi)*angle(If_shifted);
figure; 
subplot(221); imshow(If_real); title('Real Part');
subplot(222); imshow(If_imag); title('Imaginary Part');
subplot(223); imshow(If_abs); title('Magnitude Spectrum');
subplot(224); imshow(If_phase); title('Phase Spectrum');

%% Question 3
Iu0 = fftshift(If(:,1));
I0v = fftshift(If(1,:));
% Plotting 
figure;
subplot(211); plot(abs(Iu0)); title('|If(u,0)|');
subplot(212); plot(transpose(abs(I0v))); title('|If(0,v)|');











