/*
Q5. To write a program for histogram calculation and equalization using
a. Standard MATLAB function
*/
    
A=imread("F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\Ramen.jpg");
figure(), imshow(A), title("Original Image");

figure();
Agray=rgb2gray(A);
title("Grayscale Image"), imshow(Agray)

figure()
ori_his=imhist(Agray, [], 1);
title("Original Histogram"), imshow(ori_his);

figure();
hist=imhistequal(Agray);
title("Equalised image"), imshow(hist);

figure()
equal_his=imhist(hist, [], 1);
title("equalized Histogram"), imshow(equal_his);

