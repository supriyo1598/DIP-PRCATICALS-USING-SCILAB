img=imread("F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\Ramen.jpg");
subplot(1,2,1),title("Original image"), imshow (img);

neg=255-img;
subplot(1,2,2),title("NEGATIVE IMAGE"), imshow(neg);
