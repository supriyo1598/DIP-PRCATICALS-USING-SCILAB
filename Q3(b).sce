/*
Q3. To write and execute programs for image arithmetic operations
b. Subtract one image from other image
*/
x=imread("F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\Kitten.jpg");
y=imread("F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\Glitter.jpg");
z=imsubtract(x,y);
imshow(z);
