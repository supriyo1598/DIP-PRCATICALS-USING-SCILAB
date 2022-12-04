/*
11. Write and execute program for image morphological operations erosion and dilation.
*/

// Morphological Operation : Erosion & Dilation
function s = str(img)
s = 'Size : ' + strcat(string(size(img)), ' * ');
endfunction;
// Image
c = im2bw(imread('F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\circlesBrightDark.png'), 0.5);
c = imcrop(c,[10,30,300,240]);
c(100:220, 130:250) = 1; // box
c(130:200, 150:240) = 0;
c(10:15:200, 30:250) = 1;
c(30:220, 30:10:200) = 1;
figure(), title('Original Image'), xlabel(str(c)), imshow(c);


// Structure element
s1 = imcreatese('rect', 3, 3);
s2 = imcreatese('ellipse', 5, 3);
s3 = imcreatese('cross', 3, 3);
// Plotting
figure();
subplot(1,3,1), title('Rectegular Element');
xlabel(str(s1)), imshow(mat2gray(s1));
subplot(1,3,2), title('Ellipctical Element');
xlabel(str(s2)), imshow(mat2gray(s2));
subplot(1,3,3), title('Cross Structure Element');
xlabel(str(s3)), imshow(mat2gray(s3))

// erosion
e1 = imerode(c, s1);
e2 = imerode(c, s2);
e3 = imerode(c, s3);
// Plotting
figure();
subplot(2,2,1), title('Rectegular Erosion'), imshow(e1);
subplot(2,2,2), title('Ellipctical Erosion'), imshow(e2);
subplot(2,2,3), title('Cross Structure Erosion'), imshow(e3);

// dilation
d1 = imdilate(c, s1);
d2 = imdilate(c, s2);
d3 = imdilate(c, s3);
// Plotting
figure();
subplot(2,2,1), title('Rectegular Dilation'), imshow(d1);
subplot(2,2,2), title('Ellipctical Dilation'), imshow(d2);
subplot(2,2,3), title('Cross Structure Dilation'), imshow(d3);
