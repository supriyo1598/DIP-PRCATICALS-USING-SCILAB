/*
9. Write and execute programs for image frequency domain filtering
a. Apply FFT on given image
*/
img = rgb2gray(imread('F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\coloredChips.png'));
ft_img = fft(double(img));
subplot(1,2,1), title('Original Image'), imshow(img);
subplot(1,2,2), title('Direct Fourier Transformed Image'),imshow(ft_img);
