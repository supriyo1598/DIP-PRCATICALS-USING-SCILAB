/*
7. To understand various image noise models and to write programs for
a. image restoration
*/

im1 = imread('F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\noisy.jpg');
f = fspecial('gaussian', [8, 8], 2);
subplot(121), title('Noisy Image'), imshow(im1);
subplot(122), title('Filtered Image'), imshow(imfilter(im1, f));
