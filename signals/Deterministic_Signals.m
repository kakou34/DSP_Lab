clear all;
close all; 
clc;

%% Deterministic signals

diracs = Dirac(6, 10);

steps = step(4, 10);

ramps = ramp(5, 2, 10);

geos = geo(5, 2, 10);

boxs = box(6, 2, 10);

sins = sinus(0.01, 2, 1, 100);
n = 1:10;
m = 1:100;

subplot(611), stem(n, diracs);
subplot(612), stem(n, steps);
subplot(613), stem(n, ramps);
subplot(614), stem(n, geos);
subplot(615), stem(n, boxs);
subplot(616), stem(m, sins );





