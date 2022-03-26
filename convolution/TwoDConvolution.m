clear all; 
close all; 
clc;

%% Question 1 
A = [15  25  35  45  55  45  35  25  15;
     255 255 255 255 255 255 255 255 255;
     0   100 0   100 0   100 0   100 0;
     255 255 255 255 255 255 255 255 255;
     100 0   100 0   100 0   100 0   100;
     15  25  35  45  55  45  35  25  15];
h = [1 1 1; 1 1 1; 1 1 1]/3;
our_conv = convN2(A, h);
matlab_conv = conv2(A, h, "same");
figure; 
subplot(221), imshow(A, []), title("Original");
subplot(222), imshow(h, []), title("filter");
subplot(223), imshow(our_conv, []), title("Our Convolution");
subplot(224), imshow(matlab_conv, []), title("Matlab convolution");

%% Question 2: 
dh = [1 1 1; 0 0 0; -1 -1 -1];
dv = [1 0 -1; 1 0 -1; 1 0 -1];
convh = convN2(A, dh);
convv = convN2(A, dv);
figure; 
subplot(121), imshow(convh, []), title("Horizontal Derivative");
subplot(122), imshow(convv, []), title("Vertical Derivative");

%% Question 3: 
dh2 = convN2(dh, dh);
dv2 = convN2(dv, dv);
laplacian = dh2 + dv2;
figure; 
subplot(131), imshow(dh2, []), title("Second Horizontal Derivative");
subplot(132), imshow(dv2, []), title("Second Vertical Derivative");
subplot(133), imshow(laplacian, []), title("Laplacian");
