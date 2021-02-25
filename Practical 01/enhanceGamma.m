function enhanceGamma

b = imread('dome256.jpg');
bc = double(b);
g = input('Input value to increase or decrease the gamma of the image \n');
[x,y]=size(bc);

%power law transformation
out = abs((1*bc).^g);

%normalise output intensity scale [0,255]
maxm = max(out(:));
minm = min(out(:));
for i = 1:x
    for j = 1:y
        out(i,j) = (255*out(i,j))/(maxm-minm);
    end
end

out = uint8(out);


%Plot Images
%Orignal Image Plot
subplot(2,3,1),imshow(b),title('Before Power Law Transformation');
subplot(2,3,4),histogram(b,'BinLimits',[0 256],'BinWidth',1);
%Enahnced Image Plot
subplot(2,3,3),imshow(out),title('After Power Law Transformation');
subplot(2,3,6),histogram(out,'BinLimits',[0 256],'BinWidth',1);
imwrite(out,'dome256_PowerLaw.jpg','JPEG');

end
