[im, map] = imread('1817Int.png');
%if(isempty(map)) % image is RGB or grayscale
  if(size(im, 3) == 1) % image is grayscale
      im = cat(3, im, im, im);
%else % image is indexed
  im1 = ind2rgb(im, map);
  imshow(im1)
