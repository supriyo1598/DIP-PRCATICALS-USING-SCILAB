g_img = rgb2gray(imread('C:\Users\RMC-1\Documents\DIP-Divya\Pictures\Kitten.jpg'));
figure(),
subplot(1,2,1),title("Original Image "),imshow(g_img);
subplot(1,2,2),title("Original Histogram"),imhist(g_img,[],1);

/* Algorithm */
function eq_img = histeq(g_img)
    [freq, bins] = imhist(g_img,256);
    bins = 255;
    [mr, nc] = size(g_img);
    freq = cumsum(freq);
    npixels = prod(size(g_img));
    output = round(bins.*(freq./npixels));
    // Creating Equalized Image
    for i = 1:mr
        for j = 1:nc
            eq_img(i,j) = output(g_img(i,j) + 1);
        end
    end
endfunction
he_img = uint8(histeq(g_img));
figure(),
subplot(1,2,1),title("Equalized Image "),imshow(he_img);
subplot(1,2,2),title("Histogram Equalization"),imhist(he_img, [], 1);
