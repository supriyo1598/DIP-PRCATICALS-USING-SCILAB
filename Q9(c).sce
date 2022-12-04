/*
9. Write and execute programs for image frequency domain filtering
c. Apply IFFT to reconstruct image
*/
img = rgb2gray(imread('F:\CS\sem 5\Digital Image Processing\Pracicals\Pictures\coloredChips.png'));
S2 = ft_img .* fftshift(G11);
bwh_l = uint8(ifft(S2));
S2 = ft_img .* fftshift(H11);
bwh_h = uint8(ifft(S2));
subplot(121), title('DFT Butterworth Low Pass Image'), imshow(bwh_l);
subplot(122), title('DFT Butterworth High Pass Image'),imshow(bwh_h);
