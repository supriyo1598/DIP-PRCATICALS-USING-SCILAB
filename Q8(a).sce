/*
8. Write and execute programs to use spatial low pass and high pass filters
*/

/* Spatial Low Pass Filter */
i1 = imread('F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\einstein.jpg');
g_filter = fspecial('gaussian');
i2 = imfilter(i1, g_filter);
g_filter2 = fspecial('gaussian', [8,8], 10);
i3 = imfilter(i1, g_filter2);
g_filter3 = fspecial('gaussian',[25,25], 31);
i4 = imfilter(i1, g_filter3);
subplot(2,2,1), title('Original Image'), imshow(i1);
subplot(2,2,2), title('Default Gaussian kernel'), imshow(i2);
subplot(2,2,3), title('Gaussian kernel with 8 * 8 with sigma = 10'), imshow(i3);
subplot(2,2,4), title('Gaussian kernel with 25 * 25 with sigma = 31'), imshow(i4);
