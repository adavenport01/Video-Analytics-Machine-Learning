function Lut = brightnessLUT(c)

Lut = 1:256;
len = numel(Lut);
c = input('Input value to increase or decrease the value of the image \n');

    for i = 1:len
        if i-1 < 255 - c
            Lut(i) = 0;
        elseif i > 255 - c
                Lut(i) = 255
            else
                Lut(i) = (i-1) + c
            end
    end

Lut=uint8(Lut);

end
