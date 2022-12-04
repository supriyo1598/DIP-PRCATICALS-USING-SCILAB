/*
8. Write and execute programs to use spatial low pass and high pass filters
*/
//highpass
i1 = imread('F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\cycle.jpg');
l_filter = fspecial('laplacian');
i2 = imfilter(i1, l_filter);
subplot(1,2,1), title('Original Image'), imshow(i1);
subplot(1,2,2), title('Laplacian Filter'), imshow(i2);
