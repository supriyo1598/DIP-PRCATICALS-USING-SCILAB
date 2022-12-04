/*
Q4. To write and execute programs for image logical operations
c. Calculate intersection of two images
*/
A=imread("F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\Kitten.jpg");
B=imread("F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\Glitter.jpg");
intersection=bitand(A,B);
imshow(intersection);
