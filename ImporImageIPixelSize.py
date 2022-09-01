from PIL import Image
im = Image.open('0Int.png')
width, height = im.size
print(width, height)