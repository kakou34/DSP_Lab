clear all; 
close all; 
clc;

%% Question 1 
im = imread("cameraman.tif");
figure; 
imshow(im), title('Grayscale Image')


%% Question 2
[R, C] = size(im);
p = zeros(R+2, C+2);
p(2:end-1, 2:end-1) = im;% 0 padding
Gx = zeros(R+2, C+2);
for i=2:R+1
    for j=2:C+1
        % Derivative along the x direction 
        Gx(i,j)=(p(i+1,j-1)+2*p(i+1,j)+p(i+1,j+1))-(p(i-1,j-1)+2*p(i-1,j)+p(i-1,j+1));         
    end 
end
Gx = Gx(2:end-1, 2:end-1);
figure; 
imshow(Gx, []), title('Horizontal Gradient Gx')

%% Question 3
[R, C] = size(im);
p = zeros(R+2, C+2);
p(2:end-1, 2:end-1) = im;% 0 padding
Gy = zeros(R+2, C+2);
for i=2:R+1
    for j=2:C+1
        % Derivative along the y direction
        Gy(i,j)=(p(i-1,j+1)+2*p(i,j+1)+p(i+1,j+1))-(p(i-1,j-1)+2*p(i,j-1)+p(i+1,j-1));         
    end 
end
Gy = Gy(2:end-1, 2:end-1);
figure; 
imshow(Gy, []), title('Vertical Gradient Gy')

%% Question 4
[mod, ph] = detect_edges(im);
figure; 
subplot(121), imshow(mod, []), title('Modulus of the Gradient')
subplot(122), imshow(ph, []), title('Phase of the Gradient')


%% Question 5
Sx = [1 2 1; 0 0 0; -1 -2 -1];
Sy = [1 0 -1; 2 0 -2; 1 0 -1];
gradx = conv2(im, Sx, "same");
grady = conv2(im, Sy, "same");
modulus = hypot(gradx,grady);
phase = 180* atan2(gradx, grady)./3.14;
figure; 
subplot(121), imshow(modulus, []), title('Modulus of the Gradient')
subplot(122), imshow(phase, []), title('Phase of the Gradient')

