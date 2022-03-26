clear all; 
close all; 
clc; 

%% Question 1
norms = randn(1, 100);
n = 1:100;
stem(n, norms)
title('Random Normal/Gaussian Samples');
histfit(transpose(norms))

%% Question 2
uniforms = rand(1, 100);
n = 1:100;
figure; stem(n, uniforms)
title('Random Uniform Samples');
figure; histogram(uniforms)

%% Question 3
corrN = correlation (norms, norms);
figure, plot (corrN, '+');
title('Gaussian Autocorrelation');
x = 1:100;
% Get coefficients of a line fit through the data.
coefficients = polyfit(x, corrN, 1);
% Create a new x axis with exactly 1000 points (or whatever you want).
xFit = linspace(min(x), max(x), 100);
% Get the estimated yFit value for each of those 1000 new x locations.
yFit = polyval(coefficients , xFit);
% Plot everything.
plot(x, corrN, 'b.', 'MarkerSize', 15); % Plot training data.
hold on; % Set hold on so the next plot does not blow away the one we just drew.
plot(xFit, yFit, 'r-', 'LineWidth', 2); % Plot fitted line.
grid on;

%% Question 4

corrU = correlation (uniforms, uniforms);
figure, plot (corrU, '+');
title('Uniform Autocorrelation');

% Get coefficients of a line fit through the data.
coefficients = polyfit(x, corrU, 1);
% Create a new x axis with exactly 1000 points (or whatever you want).
xFit = linspace(min(x), max(x), 100);
% Get the estimated yFit value for each of those 1000 new x locations.
yFit = polyval(coefficients , xFit);
% Plot everything.
plot(x, corrU, 'b.', 'MarkerSize', 15); % Plot training data.
hold on; % Set hold on so the next plot does not blow away the one we just drew.
plot(xFit, yFit, 'r-', 'LineWidth', 2); % Plot fitted line.
grid on;

% Norm distribution is white noise, autocorrelation = 0
% Uniform distribution is not white noise , autocorrelation =/= 0

%% Last question: 
x = 1:50;
s1 = round(rand(1, 50));
figure, stem (x, s1); title('S1');

s2 = round(rand(1, 50));
figure, stem (x, s2); title('S2');

s3 = round(rand(1, 50));
figure, stem (x, s3); title('S3');

s1_shifted = [0 s1 0 0 0 0];
s2_shifted = [0 0 0 s2 0 0];
s3_shifted = [0 0 0 0 s3 0];
s = s1_shifted + s2_shifted +s3_shifted;
x2 = 1:55;
figure, stem (x2, s); title('S')

corrS1 = correlation (s, s1);
figure, plot (corrS1, '+');
title('correlation between S and S1');

corrS2 = correlation (s, s2);
figure, plot (corrS1, '+');
title('correlation between S and S2');

corrS3 = correlation (s, s3);
figure, plot (corrS3, '+');
title('correlation between S and S3');




