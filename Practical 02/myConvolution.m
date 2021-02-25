function myConvolution()

%convert image uint8 to double for indexing
boat = imread('boatnoise.jpg');
A = im2double(boat);

B = padarray(A,[1 1]);
Output = zeros([size(A,1) size(A,2)]);

%create mask
mask = ones(16)/256;

 for i = 1:size(B,1)-2
    for j = 1:size(B,2)-2
        Temp = B(i:i+2,j:j+2).*mask;
        Output(i,j) = sum(Temp(:));
    end
 end
end

