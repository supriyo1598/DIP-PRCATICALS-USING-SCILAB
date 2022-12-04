/*
6. To write and execute program for geometric transformation of image
c. Rotation
*/
s_img = imread('F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\Gray.jpg');
subplot(2,2,1), title('Original Image'), imshow(s_img);
subplot(2,2,2), title('Image rotation by 45'), imshow(imrotate(s_img, 45));
subplot(2,2,3), title('Image rotaion by -45'), imshow(imrotate(s_img, -45));
subplot(2,2,4), title('Image rotaion by 180'), imshow(imrotate(s_img, 180));
