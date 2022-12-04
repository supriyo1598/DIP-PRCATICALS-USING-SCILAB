/*
Q2. To write and execute image processing programs using point processing method
b. Obtain Flip image
*/
img=imread("F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\Kitten.jpg");
figure, imshow(img);
title("original image");
flip_img=flipdim(img,2);
figure, imshow(flip_img);
title("flipped image");
