clc;
close all;
clear all;

%% Question 1: Testing system causality
N=10;% last index
n=1:N;
k = 4;
unitstep_delayed = double(n-k>=0); %H(k-4)
subplot(211)
stem(n, unitstep_delayed)
title('Delayed Unit Step: H[k-4]')
unitstep_delayed_shifted = double(n-k+1>=0); % H(k-4+1)
y_unitstep_delayed=0.5*(unitstep_delayed+unitstep_delayed_shifted); % Y(k-4) = 0.5[H(k-4)+H(k-4+1)]
subplot(212)
stem(n, y_unitstep_delayed)
title('System Response to Delayed Unit Step y[k]=0.5(H[k-4]+H[k-4+1])')

% From the result we can see that the output  has an entry not equal to
% zero before the input started (at n=3, y=1/2 but x = 0) therefore the
% system is not causal.

%% Question 2; 

% The proposed modification: 
% Let y[k] = x[k-1] + x[k] 

unitstep_delayed_shifted_left = double(n-k-1>=0); % H(k-4-1)
y_unitstep_delayed_causal=0.5*(unitstep_delayed+unitstep_delayed_shifted_left); % Y(k-4) = 0.5[H(k-4-1)+H(k-4)]
figure;
subplot(211), stem(n, unitstep_delayed)
title('Delayed Unit Step: H[k-4]')
subplot(212), stem(n, y_unitstep_delayed_causal)
title('Causal System Response to Delayed Unit Step y[k]=0.5(H[k-4-1]+H[k-4])')




