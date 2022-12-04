/*
Q2. To write and execute image processing programs using point processing method
c. Thresholding
*/
c2 = imread("F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\Ramen.jpg");
subplot(1,2,1), title('Original Image'), imshow(c2);
thres = im2bw(c2, 110/256)
subplot(1,2,2), title('Binary Image at D0 = 110'), imshow(thres);
