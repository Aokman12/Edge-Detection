im = imread('Imagename.png');
im = rgb2gray(im);
im_d = im2double(im);
im_gs = im_d;
im_bw = im_gs;
%Canny Method
im_edge_1 = edge(im_bw,'Canny');
figure(1), imshow(im_edge_1);
title('Edge detection using Canny');
%PREWITT Method
im_edge_2 = edge(im_bw,'Prewitt');
figure(2), imshow(im_edge_2);
title('Edge Detection Using Prewitt');
%Zero Cross Method
im_edge_3 = edge(im_bw, 'Zerocross');
figure(3), imshow(im_edge_3);
title('Edge Detection Using Prewitt');
%Roberts Method
im_edge_4 = edge(im_bw, 'Roberts');
figure(4), imshow(im_edge_4);
title('Edge Detection Using Roberts');
%Bounda Method
Kernel_x = [-sqrt(2)/4 0 sqrt(2)/4; -1 0 1; -sqrt(2)/4 0 sqrt(2)/4];
Kernel_y = [-sqrt(2)/4 0 sqrt(2)/4; -1 0 1; -sqrt(2)/4 0 sqrt(2)/4];
im_edge_5_x = imfilter(im_bw, Kernel_x);
im_edge_5_y = imfilter(im_bw, Kernel_y);
im_edge_5 = sqrt(im_edge_5_x + im_edge_5_y);
figure(6), imshow(im_edge_5);
title('Edge Detection Using Bounda');
%Multiple Plotting
subplot(2,3,1);
imshow(im); 
title('Original Image');
subplot(2,3,2);
imshow(im_edge_1);

title('Edge Detection using Canny');
subplot(2,3,3);
imshow(im_edge_2); 
title('Edge Detection using Prewitt');
subplot(2,3,4);
imshow(im_edge_3); 
title('Edge Detection using Zerocross');
subplot(2,3,5);
imshow(im_edge_4); 
title('Edge Detection using Roberts');
subplot(2,3,6);
imshow(im_edge_5); 
title('Edge Detection using Bounda');
%Noise
im_gs_noise = imnoise(im_gs, gaussian, 0, 0.02);
figure;
p = imshow(im_gs_noise);
im_bw =im_gs_noise;
%Canny Method
im_edge_1 = ede(im-bw,'Canny');
figure(1), imshow(im_edge_1);
title('Edge detection using Canny');
%PREWITT Method
im_edge_2 = edge(im_bw, 'Prewitt');
figure(2),imshow(im_edge_2);
title('Edge Detection Using Prewitt');
%Zero Cross Method
im_edge_3 = edge(im_bw, 'Zerocross');
figure(3), imshow(im_edge_3);
title('Edge Detection Using Prewitt');
%Roberts Method
im_edge_4 = edge(im_bw, 'Roberts');
figure(4), imshow(im_edge_4);
title('Edge Detection Using Roberts');
%Bounda Method
kernel_x = [-sqrt(2)/4 0 sqrt(2)/4; -1 0 1; -sqrt(2)/4 0 sqrt(2)/4];
im_edge_5_x = imfilter(im_bw, kernel_x);
figure(6), imshow(im_edge_5);
title('Edge Detection Using Bounda');
%Multiple Plotting
subplot(2,3,1);
imshow(im); 
title('Original Image');
subplot(2,3,2);
imshow(im_edge_1); 
title('Edge Detection using Canny');
subplot(2,3,3);
imshow(im_edge_2); 
title('Edge Detection using Prewitt');
subplot(2,3,4);
imshow(im_edge_3); 
title('Edge Detection using Zerocross');
subplot(2,3,5);
imshow(im_edge_4); 
title('Edge Detection using Roberts');
subplot(2,3,6);
imshow(im_edge_5); 
title('Edge Detection using Bounda');
%Segmentation
i = imread('Men.png');
imshow(i)
mask = zeros(size(i));
mask(25:end-25, 25:end-25)=1;
imshow(mask);
title('Initial Contour Location')
title('Original Image')
bw = active_contour(i, mask);
imshow(bw)
title('Segmented Image, 100 iterations')
bw = active_contour(i,mask,200);
imshow(bw)
title('Segmented Image, 300 iterations')
