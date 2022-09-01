im = imread(1817Int.png);
imshow
map = hsv(256); % Or whatever colormap you want.
rgbImage = ind2rgb(im, map); % im is a grayscale or indexed image.


