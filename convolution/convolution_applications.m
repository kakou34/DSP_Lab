clear all; 
close all; 
clc;

%% Question 1 
x = [1 2 -2 6 7];
h = [1 1 1]/3;

conv1 = convN(x, h, 1, 'zero');
conv2 = convN(x, h, 2, 'zero');
conv3 = convN(x, h, 3, 'zero');

figure; n=0:length(x)-1;
subplot(311), stem(n, conv1), title('Convolution with zeroh=1');
subplot(312), stem(n, conv2), title('Convolution with zeroh=2');
subplot(313), stem(n, conv3), title('Convolution with zeroh=3');

%% Question 2
h1 = [1 -1]; h2=[1 1];
con1 = convN(x, h1, 1, 'zero');
con2 = convN(con1, h2, 1, 'zero');
figure; n=0:length(x)-1;
subplot(211), stem(n, con1), title('Convolution with [1 -1]');
subplot(212), stem(n, con2), title('Convolution of the result with [1 1]');

%% Question 3
h3 = [1 0 -1];
con3 = convN(x, h3, 1, 'zero');
figure; n=0:length(x)-1;
stem(n, con3), title('Convolution with [1 -1]');

%% Question 4
h1 = [1 -1];
con1 = convN(x, h1, 1, 'zero');
con2 = convN(con1, h1, 1, 'zero');
h2 = conv(h1, h1);
con3 = convN(x, h2, 1, "zero");
figure; n=0:length(x)-1;
subplot(211), stem(n, con2), title('Convolution with [1 -1] twice');
subplot(212), stem(n, con3), title('Convolution with [1 -1]*[1 -1]');

