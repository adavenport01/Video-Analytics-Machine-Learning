%Task 1
dome = imread('dome256.jpg');
boat = imread('boat256.jpg');

subplot(2,2,1),imshow(boat)
subplot(2,2,3),histogram(boat,'BinLimits',[0 256],'BinWidth',1);

subplot(2,2,2),imshow(dome)
subplot(2,2,4),histogram(dome,'BinLimits',[0 256],'BinWidth',1);

% bh = histogram(boat);
% bhv = bh.Values;

