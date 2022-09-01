from PIL import Image

im = Image.open("C:\Users\91755\matlab\colourchange\0Int.png")
im.save("test-600.png", dpi=(1936,540))