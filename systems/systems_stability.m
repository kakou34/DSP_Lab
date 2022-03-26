clc;
close all;
clear all;

%% Question 1: Primitive operator
k= 4; %delay
N = 10; % max index
n = 1:N;
unitstep_delayed = (n-k>=0);
subplot(211), stem(n, unitstep_delayed)
title('Delayed Unit Step: H[k-4]')

y = prim(unitstep_delayed);
subplot(212),stem(n, y)
title('Prim response to delayed unit step')

% We have for every index k if the input is bounded then the output will be
% the sum of the input values therefore it is bounded. So the accumulator
% is stable.


%% Question 2: Primitive response to the impulse signal
delta = zeros(1,11);
delta(6) = 1; % Assume the middle of the vector is for index n=0
figure;
subplot(211)
i = -5:5;
stem(i, delta);
title('Impulse signal')
y_delta = prim(delta);
subplot(212);
stem(i, y_delta);
title('Primitive Response to the Impulse signal')

% Primitive response to the impulse signal is the unit step signal

% %% Question 3
i = -5:5;
delta = zeros(1,11);
delta(6) = 1; % Assume the middle of the vector is for index n=0
figure;
subplot(211); stem(i, delta);
title('Impulse signal')
y3_delta = stability_system3(delta);
subplot(212); stem(i, y3_delta);
title('y(k)=x(k)+2y(k-1) System Response to the Impulse signal')
% 
%% Question 4
y4_delta = stability_system4(delta);
figure;
stem(i, y4_delta);
title('y(k)=x(k)+y(k-1)/3 System Response to the Impulse signal')






