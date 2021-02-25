function enhanceBrightness02()
 
% dome = ('dome256.jpg');
% boat = ('boat256.jpg');

% e = questdlg('Boat Image or Dome Image?', ...
% 	'Brightness Enhancement', ...
% 	'boat','dome','stop';
% [subplot(1,2,1),imshow(dome),title('Dome')],[subplot(1,2,2),imshow(boat),title('Boat')]

%     %image choice
%     switch e
%         case 'boat'
%             disp(' You chose boat.')
%             b = imread('boat256.jpg');
%             
%         case 'dome'
%             disp(' You chose dome.')
%             b = imread('dome256.jpg');
%         case 'stop'
%             disp('STOPPED')
%     end

b = imread('boat256.jpg');
[x,y]=size(b);

%input from user
d = questdlg('Would you like to decrease or increase the Brightness?', ...
	'Brightness Enhancement', ...
	'increase','decrease','stop');

% Handle response
switch d
    case 'increase'
        c = input('What value do you want to increase by? \n');
        disp(' incresed brightness ')
        for i = 1:1:x
            for d = 1:1:y
                b2(i,d) = b(i,d) + c;
            end
        end
    case 'decrease'
        c = input('What value do you want to decrease by? \n');
        disp(' decreased brightness ')
        for i = 1:1:x
            for d = 1:1:y
                b2(i,d) = b(i,d) + c;
            end
        end
    case 'stop'
        disp('STOPPED')
end

%Plot Images
%Orignal Image Plot
subplot(2,3,1),imshow(b),title('Before');
subplot(2,3,4),histogram(b,'BinLimits',[0 256],'BinWidth',1);
%Enahnced Image Plot
subplot(2,3,3),imshow(b2),title('After');
subplot(2,3,6),histogram(b2,'BinLimits',[0 256],'BinWidth',1);
imwrite(b2,'dome256_Bright.jpg','JPEG');

% subplot(2,3,2),[x,y]=size(b);

end