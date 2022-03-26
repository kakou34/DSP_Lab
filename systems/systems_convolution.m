clc;
close all;
clear all;

%% Question 1
% Testing the function
signal = [1, 2, 3, 4, 5];
filter = [1, 2];
our_conv = convolution(signal, filter);
matlab_conv = conv(signal, filter, "valid");
figure; n=1:length(our_conv);
subplot(211), stem(n, our_conv), title("Our Convolution");
subplot(212), stem(n, matlab_conv), title("Matlab Convolution");

%% Question 2: 
norms = randn(1, 1000);
n = 1:1000;
figure,
subplot(211), stem(n, norms);
title('Random Normal/Gaussian Samples');
subplot(212), histfit(transpose(norms));
title('Histogram and PDF of Normal/Gaussian Samples');

h = [18 8 5 2 1];
nconvh = conv(norms, h,'same');
ncorrh = correlation (norms, h);
figure,
subplot(211), plot(nconvh);
title('Convolution result');
subplot(212), plot(ncorrh);
title('Correlation Result');