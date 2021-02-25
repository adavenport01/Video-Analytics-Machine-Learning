boat = imread('boatnoise.jpg');
subplot(2,5,1),imshow(boat),title('original boat');
B = ones(3,3)/9;

conv_boat = conv2(fspecial('average',3),boat)/255;
subplot(2,5,2),imshow(conv_boat),title('conv2()');

filter_boat = filter2(fspecial('average',3),boat)/255;
subplot(2,5,3),imshow(conv_boat),title('filter2()');

noiseReduction;

clear;