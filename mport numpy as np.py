mport numpy as np
from PIL import Image, ImageChops

img = np.array(Image.open('0RGB.png'))
img_overlay_rgba = np.array(Image.open('0Int.png'))

#newIm.show()
#img_overlay_resize.show()
alpha_mask = img_overlay_rgba[:, 1]
print('-------------------')
print(alpha_mask)
#/0Int.png'))

np.set_printoptions(threshold=np.inf)
print(img)
print(img_overlay_rgba )
print('--------------------')

# print()

img_overlay_resize = Image.fromarray(img_overlay_rgba // 255).convert('RGB').resize((1936, 540), Image.ANTIALIAS)

img_overlay_offset = ImageChops.offset(img_overlay_resize, -50, -60)

img_overlay_offset.save('img_overlay_resize_offset.jpg')

img = Image.open('/0RGB.png').convert('RGB')
print(img.size)
#
img_overlay_rgba = Image.open('/0Int.png').convert('RGB')
img_overlay_rgba.show()
img_overlay_resize = img_overlay_rgba.resize((1936, 540), Image.ANTIALIAS)
#
print(img_overlay_resize.size)
#
newIm = Image.blend(img, img_overlay_offset, 0.8)