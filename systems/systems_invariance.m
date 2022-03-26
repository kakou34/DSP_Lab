clc;
close all;
clear all;

%% Question 1: Getting the signal response
xa = [0 0 0 0 1 2 3 4 5 0 0 0 0 0 0 0 0 0 0]; 
xb = [0 0 0 0 0 0 0 0 0 4 3 2 1 0 0 0 0 0 0];
ya = linearity_system1(xa);
yb = linearity_system1(xb);
n = 1:19;
subplot(411), stem(n, xa), title('Input signal Xa')
subplot(412), stem(n, ya), title('Output signal Ya')
subplot(413), stem(n, xb), title('Input signal Xb')
subplot(414), stem(n, yb), title('Output signal Yb')

%% Question 2
% 1-> Checking for linearity
yayb = ya + yb;
xab = xa+xb;
yab = linearity_system1(xab);
subplot(211), stem(n, yayb), title('Sum of Ya+Yb')
subplot(212), stem(n, yab), title('Output signal Yab to input Xa+Xb')
if(yayb == yab)
     m = "The system is linear";
     disp(m)
else
     m = "The system is not linear";
     disp(m)
end

% 2-> Checking for time-invariance
m = 1:23;
shift_xa = [0 0 0 0 xa]; %Shift Xa by 4 
y_shift_xa = linearity_system1(shift_xa);
ya_shifted = [0 0 0 0 ya];
subplot(211), stem(m, y_shift_xa), title('System output for Xa-4')
subplot(212), stem(m, ya_shifted), title('Ya-4')

if(y_shift_xa == ya_shifted)
      m = "The system is time invariant";
     disp(m)
else
     m = "The system is not time invariant";
     disp(m)
end

%% Question 3 Proposing a nonlinear/time-variant system
% 1-> Checking for linearity
yayb = ya + yb;
xab = xa+xb;
yab = linearity_system2(xab);
subplot(411), stem(n, yayb), title('Sum of Ya+Yb')
subplot(412), stem(n, yab), title('Output signal Yab to input Xa+Xb')
if(yayb == yab)
     m = "The system is linear";
     disp(m)
else
     m = "The system is not linear";
     disp(m)
end

% 2-> Checking for time-invariance
m = 1:23;
shift_xa = [0 0 0 0 xa]; %Shift Xa by 4 
y_shift_xa = linearity_system2(shift_xa);
ya_shifted = [0 0 0 0 ya];
subplot(413), stem(m, y_shift_xa), title('System output for Xa-4')
subplot(414), stem(m, ya_shifted), title('Ya-4')

if(y_shift_xa == ya_shifted)
      m = "The system is time invariant";
     disp(m)
else
     m = "The system is not time invariant";
     disp(m)
end
