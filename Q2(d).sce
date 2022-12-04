/*
Q2. To write and execute image processing programs using point processing method
d. Contrast stretching
*/
c2 = imread("F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\Lena_dark.png");
subplot(1,2,1), title('Original Image'), imshow(c2);
funcprot(0);
function image = contrast_stretch(gray_img)
a = min(gray_img(:));
b = max(gray_img(:));
image = (gray_img - a)*(255/(b-a));
endfunction;
c_sam = contrast_stretch(c2);
figure();
subplot(1,2,1),title("Original Image "),imshow(c2);
subplot(1,2,2),title("Original Histogram"),imhist(c2,[],1);

figure();
subplot(1,2,1),title("Stretched Image"),imshow(c_sam);
subplot(1,2,2),title("Stretched Histogram"), plot2d3(imhist(c_sam));
