function enhanceContrast = enhanceContrast

%input from user
%a = input('enter name of image you want to enhance \n');
b = imread('boat256.jpg');

%Value limits for stretching image
bVector = stretchlim(b);
%c = input('Input value to increase or decrease the constrast of the image \n');

%use manual values 
b2 = imadjust(b, stretchlim(b, [0.06, 2.0]),[]);

%use vector min and max values
%b2 = imadjust(b, stretchlim(b, [bVector(1:2)]),[]);

%Plot Images
%Orignal Image Plot
subplot(2,3,1),imshow(b),title('Original Image');
subplot(2,3,4), imhist(b), title('Histogram of Original Image');
%Enahnced Image Plot
subplot(2,3,3),imshow(b2),title('Stretched Image');
subplot(2,3,6), imhist(b2), title('Histogram of Stretched Image');
imwrite(b,'boat256_Contrast.jpg','JPEG');

end