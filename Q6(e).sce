/*
6. To write and execute program for geometric transformation of image
e. Zooming
*/
s_img = imread('F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\cycle.jpg');
f = 2;
im2 = imresize(s_img, f);
subplot(121), title('Original Image'), imshow(s_img);
subplot(122), title('Image zoomed by 200%'), imshow(im2(96:287, 81:241, :));
