width = img.size[0] 
height = img.size[1] 
for i in range(0,width):# process all pixels
    for j in range(0,height):
        data = img.getpixel((i,j))
        #print(data) #(255, 255, 255)
        if (data[0]==255 and data[1]==255 and data[2]==255):
            img.putpixel((i,j),(44, 44, 44))
img.show()
