function histogramEQ

img = face1;
dr = 0:256;
img_EQ = histeq(img,dr);

%Plot Images
%Orignal Image Plot
subplot(2,3,1),imshow(img),title('Before EQ Transformation');
subplot(2,3,4),histogram(img,'BinLimits',[0 256],'BinWidth',1);
%Enahnced Image Plot
subplot(2,3,3),imshow(img_EQ),title('After EQ Transformation');
subplot(2,3,6),histogram(img_EQ,'BinLimits',[0 256],'BinWidth',1);

subplot(2,3,2),plot(dr),title('Plot of enhanced dynamic range');

%imwrite(img_EQ,'boat256_histEQ.jpg','JPEG');

end

