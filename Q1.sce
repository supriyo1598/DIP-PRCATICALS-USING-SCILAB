//Q1. Write program to read and display digital image using MATLAB or SCILAB
//a. Become familiar with SCILAB/MATLAB Basic commands


disp('2 * 3 - 4 + 8 / 3 \ 9 =', 2*3-4+8/3\9);
x = linspace(0,8,100);
plot(sin(x),'o-');
plot(cos(x),'r.-');
xtitle('sin & cos waves');
legend('sin(x)','cos(x)', 3);
xgrid(0,1,7);

//b. Read and display image in SCILAB/MATLAB

image=imread("F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\cycle.jpg");
imshow(image);

//c. Resize given image

resize = imresize(image,2);
subplot(2,2,1), title('Original Image'), imshow(image);
subplot(1,2,2), title('Resized Image'), imshow(resize);


//d. Convert given color image into gray-scale image

gray=rgb2gray(image);
imshow(gray);

//e. Convert given color/gray-scale image into black & white image

bw=im2bw(gray,0.5);
imshow(bw);


//f. Draw image profile

improfile(image);


//g. Separate color image in three R, G & B planes

[r,c] = size(image); //
all_black = zeros(r,c,'uint8'); 
red_img = cat(3, image(:,:,1), all_black, all_black);
green_img = cat(3, all_black, image(:,:,2), all_black);
blue_img = cat(3, all_black, all_black, image(:,:,3));

subplot(2,2,1),title("Original Image"),imshow(image);
subplot(2,2,2),title("Red Plane Image"),imshow(red_img);
subplot(2,2,3),title("Green Plane Image"),imshow(green_img);
subplot(2,2,4),title("Blue Plane Image"),imshow(blue_img);

//h. Create color image using R, G and B three separate planes

merged = red_img + green_img + blue_img;
subplot(3,3,2),title("Original Image"), imshow(image);
subplot(3,3,4),title("Red Plane Image"), imshow(red_img);
subplot(3,3,5),title("Green Plane Image"), imshow(green_img);
subplot(3,3,6),title("Blue Plane Image"), imshow(blue_img);
subplot(3,3,8),title("Merged RGB Planes Image"), imshow(merged);



//i. Flow control and LOOP in SCILAB

for i=0:10
disp(i)
end


//j. Write given 2-D data in image file

mat = zeros(20,20,'uint8');
mat(5:10, 5:10) = 1; // box
mat(2, 3:15) = 1; //vertical line
mat(2:18, 3) = 1; //horizontal line
mat(1:4:20,1:4:20) = 1; // linear points
disp('Given 2D data : ', mat);
title('Created Image from matrix'), imshow(mat2gray(mat));
