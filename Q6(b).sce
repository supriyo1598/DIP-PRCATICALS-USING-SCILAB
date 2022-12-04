/*
6. To write and execute program for geometric transformation of image
b. Scaling
*/
s_img = imread('F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\ramen.jpg');
width = size(s_img, 'c'); // column pixels = width
height = size(s_img, 'r'); // row pixels = height
// Scaling width by 2
mat = [ 2 0; 0 1; 0 0];
sc1 = imtransform(s_img, mat, 'affine', width*mat(1), height*mat(5));
// Scaling height by 2
mat([1,5]) = [1 2];
sc2 = imtransform(s_img, mat, 'affine', width*mat(1), height*mat(2));
// Scaling image by 2
mat([1,5]) = [2 2];
sc3 = imtransform(s_img, mat, 'affine', width*mat(1), height*mat(2));
function s = str(img)
s = 'Size : ' + strcat(string(size(img)), ' * ');
endfunction;
subplot(3,3,1), title('Original Image'), xlabel(str(s_img)), imshow(s_img);
subplot(3,2,2), title('Image scaling width by 2'),xlabel(str(sc1)), imshow(sc1);
subplot(2,3,4), title('Image scaling height by 2'),xlabel(str(sc2)), imshow(sc2);
subplot(2,2,4), title('Image scaling by 2'),xlabel(str(sc3)), imshow(sc3);
