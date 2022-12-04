/*
Q3. To write and execute programs for image arithmetic operations
a. Addition of two images
*/

x=imread("F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\Kitten.jpg");
y=imread("F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\Glitter.jpg");
z=imadd(x,y);
title("Addition of image");
imshow(z);
