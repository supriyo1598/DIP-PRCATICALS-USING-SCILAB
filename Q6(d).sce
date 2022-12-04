img=rgb2gray(imread("C:\Users\RMC-1\Documents\DIP-Divya\Pictures\Kitten.jpg"));
[r c]=size(img);
m=zeros(r,c,'uint8');
j=imresize(img, 0.5);
m(114:342,160:479)=j(:,:);
imshow(m)
