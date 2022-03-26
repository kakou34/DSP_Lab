clear all; 
close all; 
clc;

%% Testing the ConvN function
x = [1, 2, 3, 4, 5];
h = [1,2,1];
our_conv = convN(x, h, 2, 'per');
figure; n=0:length(x)-1;
stem(n, our_conv), title("Our Convolution, 'same'");


%% Question 4
% Testing the padding function:
x = [1, 2, 3, 4, 5];
h = [1, 1, 1];

xp1= pad(x,length(h), "zero");
xp2= pad(x,length(h), "border");
xp3= pad(x,length(h), "sym");
xp4= pad(x,length(h), "per");
xp5= pad(x,length(h), "borsym");

figure; n= 1:length(xp1);
subplot(511), stem(n, xp1), title("Zero Padding");
subplot(512), stem(n, xp2), title("Border Padding");
subplot(513), stem(n, xp3), title("Symmetric Padding");
subplot(514), stem(n, xp4), title("Periodic Padding");
subplot(515), stem(n, xp5), title("Border-Symmetric Padding");
