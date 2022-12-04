/*
7. To understand various image noise models and to write programs for
c. Minimize Gaussian noise
*/

im1 = imread('F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\cycle.jpg');
im2 = imnoise(im1, 'gaussian');
f = fspecial('average', 3);
subplot(131), title('Original Image'), imshow(im1);
subplot(132), title('Gaussian Noised Image'), imshow(im2);
subplot(133), title('Filtered Image'), imshow(imfilter(im1, f));
