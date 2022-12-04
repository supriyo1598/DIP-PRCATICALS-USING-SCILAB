/*
7. To understand various image noise models and to write programs for
d. Median filter
*/
im2 = rgb2gray(imread(fullpath(getIPCVpath() + 'images/baboon.png')));
d_im = imnoise(im2, 'salt & pepper', 0.25);
[r c] = size(d_im);
img1 = zeros(r+2, c+2, 'uint8');
img1(2:r+1, 2:c+1) = d_im(:,:);
// border padded image
img1(1, 1) = d_im(1, 1);
img1(r+2, 1) = d_im(r, 1);
img1(1, c+2) = d_im(1, c);
img1(r+2, c+2) = d_im(r, c);
img1(2:r+1, 1) = d_im(:,1);
img1(2:r+1, c+2) = d_im(:,c);
img1(1, 2:c+1) = d_im(1,:);
img1(r+2, 2:c+1) = d_im(r,:);
for i = 2:r+1
for j = 2:c+1
img1(i,j) = gsort(img1(i-1:i+1, j-1:j+1))(5);
end
end
subplot(131), title('Original Image'), imshow(im2);
subplot(132), title('Salt & Pepper Image'), imshow(d_im);
subplot(133), title("Median Filter"), imshow(img1(2:r+1, 2:c+1));
