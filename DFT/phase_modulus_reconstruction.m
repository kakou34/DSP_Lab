clear all;
close all;
clc;

%% Question 1
im = imread("cameraman.tif");
figure; 
imshow(im), title('Grayscale Image')

%% Question 2
If = fft2(im);
If_shifted = fftshift(If);
If_abs = abs(If_shifted);
If_phase = (180/pi)*angle(If_shifted);
figure; 
subplot(121); imshow(log(If_abs +1), []); title('Magnitude spectrum');
subplot(122); imshow(If_phase, []); title('Phase Spectrum');

%% Question 3
If_abs_rec = log(abs(If)+1);
If_phase_rec = 1*exp(1i*angle(If));
% reconstructin
Im_mag = ifft2(If_abs_rec);
Im_phase = ifft2(If_phase_rec);
% showing images 
figure; 
subplot(121); imshow(real(If_abs_rec), []); title('Image reconstructed from Modulus');
subplot(122); imshow(real(Im_phase), []); title('Image reconstructed from Phase');

%% Question 4
im2 = rgb2gray(imread("football.jpg"));
im2 = im2(1:256, 1:256);
figure; 
imshow(im2), title('Grayscale Image')

%% Question 5
If2 = fft2(im2);
If_shifted2 = fftshift(If2);
If_abs2 = abs(If_shifted2);
If_phase2 = (180/pi)*angle(If_shifted2);
figure; 
subplot(121); imshow(log(If_abs2 +1), []); title('Magnitude spectrum');
subplot(122); imshow(If_phase2, []); title('Phase Spectrum');

%% Question 6
If_mag1_phase2 = abs(If) .* exp(1i*angle(If2)); 
If_mag2_phase1 = abs(If2) .* exp(1i*angle(If));
% reconstructin
Im_mag1_phase2 = ifft2(If_mag1_phase2);
Im_mag2_phase1 = ifft2(If_mag2_phase1);
% showing images 
figure; 
subplot(121); imshow(real(Im_mag1_phase2), []); title('Modulus of Cameraman Phase of Football');
subplot(122); imshow(real(Im_mag2_phase1), []); title('Modulus of Football Phase of Cameraman');
