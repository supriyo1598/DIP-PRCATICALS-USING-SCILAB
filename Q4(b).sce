/*
Q4. To write and execute programs for image logical operations
b. OR operation between two images
*/
A=imread("F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\Kitten.jpg");
B=imread("F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\Glitter.jpg");
orimage=bitor(A,B);
imshow(orimage);
