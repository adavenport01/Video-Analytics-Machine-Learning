function noiseReduction()

%prompt = 'What image do you want to filter? e.g boat.jpg ';
prompt2 = 'What size mask would you like to apply? ';

%image = str(prompt);
image = imread('boatnoise.jpg');
maskSize = input(prompt2);

conv_image = conv2(fspecial('average',maskSize),image)/255;
subplot(2,5,4),imshow(conv_image),title('noiseReductionFunc');

end

