function edgeExtract()

%Ihor = image horizontal gradient
%Iver = image vertical gradient 
% maskIn
% maskOut

boat = imread('boatnoise.jpg');

edgeCanny = edge(boat,'canny');

subplot(2,5,6),imshow(edgeCanny),title('Canny Edge Extraction');

[Gx, Gy] = imgradientxy(boat,'prewitt');


%subplot(2,5,7),imshowpair(Gx,Gy,'montage'),title('Directional Gradients Gx and Gy, Using Sobel Method')
subplot(2,5,7),imshow(Gx),title('Gradients Gx, Prewitt Method');
subplot(2,5,8),imshow(Gy),title('Gradients Gy, Prewitt Method');
end

