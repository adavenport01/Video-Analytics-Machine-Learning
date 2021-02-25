clear all;

close all;

a = 1;
b = 2;
c = mySum(a,b);
d = cos(a);

myText = 'Hello big gyammon head';

task 4;
v = [1 2 3 4];
m = [1 2 3; 4 5 6; 10 8 10];
v2 = [1; 2; 3; 4;];

z = zeros(5,1);
m2 = rand(3,2)

task 5;

element = 3;
m = [1 2 3; 4 5 6; 10 8 10];
m(3,3) = m(3,3)+1;
m(1:3,2);
m(3,:)
M = [m, m];
[rows columns]=size(M);
M2 = [1 2 3; 4 5 6; 7 8 9; 10 11 12 ; 13 14 15 ;16 17 18]

Task 6;
ma = [1 1 1; 1 1 1; 1 1 1]
ma=ma + 10
mb = [3 3 3; 3 3 3; 3 3 3] 
mc  = mb + ma
ma * mc
ma .* mc
mat=ma'
ima=inv(ma)

Task 7;
fuck task 7

Task 8;
x = 0:pi/100:2*pi;
y = sin(x);
plot(x,y)

xlabel('x')
ylabel('sin(x)')
title('Plot of Sine Function')

plot(x,y,'r--')
y2 = cos(x);
hold on
plot (x,y2,'m:')
legend('sin','cos')

tiledlayout(2,2)
nexttile
plot(x,y,'r--')

Task 9;
points = rand(10,2)
plot(points(:,1), points(:,2), 'o')
hold on
xlabel('x')
xlabel('y')
line([x1 x2],[y1 y2])

plot3(points2(:,1), points2(:,2), points2(:,3), 'o')


Task 10;
I=imread('parrot.jpg');
imshow(I)
image(I)
imagesc(I)

I(100,100)
I2=I+50;
I=double(I);
imwrite(I2,'parrot2.jpg','JPEG');
R=I(:,:,1);

figure, imagesc(R), colormap(gray(128)), title('quantization: 128 levels (7 bpp)')
figure, imagesc(R), colormap(gray(64)), title('quantization: 64 levels (6 bpp)')
figure, imagesc(R), colormap(gray(16)), title('quantization: 16 levels (4 bpp)')
figure, imagesc(R), colormap(gray(4)), title('quantization: 4 levels (2 bpp)')

imwrite(R,'parrot3_gray.jpg','JPEG');