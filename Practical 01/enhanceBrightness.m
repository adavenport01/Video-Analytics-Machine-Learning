function enhanceBrightness = enhanceBrightness

%input from user
%a = input('enter name of image you want to enhance \n');
b = imread('dome256.jpg');
c = input('Input value to increase or decrease the value of the image \n');
[x,y]=size(b);

    for i = 1:1:x
        for d = 1:1:y
            b2(i,d) = b(i,d) + c;
        end
    end

%Plot Images
%Orignal Image Plot
subplot(2,3,1),imshow(b),title('Before');
subplot(2,3,4),histogram(b,'BinLimits',[0 256],'BinWidth',1);
%Enahnced Image Plot
subplot(2,3,3),imshow(b2),title('After');
subplot(2,3,6),histogram(b2,'BinLimits',[0 256],'BinWidth',1);
imwrite(b2,'dome256_Bright.jpg','JPEG');

end