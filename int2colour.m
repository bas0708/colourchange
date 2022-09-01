%clear
%close all
%img = imread(1817Int.png)
%imshow
%colourmap jet
im = imread(1817Int.png);
colorscale ="-- color picture"
if(size(im, 3) == 1) % image is grayscale
  colorscale ="-- gray picture"
  [rgbgray,cmap] = gray2ind(im,256)
  im = cat (3,rgbgray,rgbgray, rgbgray)      
 end
imshow(im)
title(string(1817Int.png) + colorscale );
