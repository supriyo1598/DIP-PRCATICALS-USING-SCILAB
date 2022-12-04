/*
6. To write and execute program for geometric transformation of image
a. Translation
*/

S1 = imread('F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\kitten.jpg');
// Translation for x = 20
mat = [ 1 0 0; 0 1 0; 20 0 1];
S2 = imtransform(S1,mat,'affine');
// Translation for y = -20
mat(3, 1:2) = [0 -20];
S3 = imtransform(S1,mat,'affine');
// 'Translation for (-20, 30)'
mat(3, 1:2) = [-20 30];
S4 = imtransform(S1,mat,'affine');
subplot(2,2,1), title('Original Image'), imshow(S1);
subplot(2,2,2), title('Translation for x = 20'), imshow(S2);
subplot(2,2,3), title('Translation for y = -20'), imshow(S3);
subplot(2,2,4), title('Translation for (-20,30)'), imshow(S4);
