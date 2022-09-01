pixelvalues = double(imread('1817Int.png'));
PixelInt = mean(pixelvalues,3);
I1 = ind2rgb(Brightfield(:,:,1), gray(256)); %Brightfield
I2 = ind2rgb(PixelInt, jet(256)); %RGB Image
imshow(I2,[])
[r,c,d] = size(I2);
I1 = I1(1:r,1:c,1:d);
% Replacing those pixels below threshold with Brightfield Image
threshold = 70;

I2R = I2(:,:,1); I2G = I2(:,:,2); I2B = I2(:,:,3);
I1R = I1(:,:,1); I1G = I1(:,:,2); I1B = I1(:,:,3);

I2R(PixelInt<threshold) = I1R(PixelInt<threshold);
I2G(PixelInt<threshold) = I1G(PixelInt<threshold);
I2B(PixelInt<threshold) = I1B(PixelInt<threshold);
I2(:,:,1) = I2R; I2(:,:,2) = I2G; I2(:,:,3) = I2B;

h = figure;
imshow(I2,[]) 