clear all; 
close all; 
clc;

%% Question 1
signal = zeros(1, 40);
signal(1,20) = 1;
n=1:40;
stem(n, signal), title('Delta(k-20)');

%% Question 2
alpha = 0.5;
caus = canny_der_causal_h(signal, alpha);
anticaus = canny_der_anticausal_h(signal, alpha);

figure;
subplot(211); 
stem(n, caus), title('Causal Filtering Result');
subplot(212); 
stem(n, anticaus), title('Anti-Causal Filtering Result');

%% Question 3
u1 = (n>=10); % Step function shifted to 10
u2 = (n>=30); % Step function shifter to 30
u = u1 - u2;
figure;
stem(n, u), title('u[k - 10] - u[k - 30]');

%% Question 4
alpha = 0.5;
s = 0.5;
caus = canny_der_causal_f(u, alpha, s);
anticaus = canny_der_anticausal_f(u, alpha, s);

figure;
subplot(211); 
stem(n, caus), title('Causal Filtering Result');
subplot(212); 
stem(n, anticaus), title('Anti-Causal Filtering Result');



