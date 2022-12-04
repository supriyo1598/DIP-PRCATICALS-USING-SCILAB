/*
7. To understand various image noise models and to write programs for
b. Remove Salt and Pepper Noise
*/

im2 = rgb2gray(imread('F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\coloredChips.png'));
im3 = imnoise(im2, 'salt & pepper', 0.3);
subplot(131), title('Original Image'), imshow(im2);
subplot(132), title('Salt & Pepper Noised Image'), imshow(im3);
subplot(133), title('Filtered Image'), imshow(immedian(im2,3));
