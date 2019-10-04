#page no.294
#formula used:volume of pyramid = area of base*perpendicular height/3
#given: rectangular pyramid
l = 5 # length of rectangular base
b = 6 # breadth of rectangular base
h = 18 # height of rectangular base
vol_rect = l*b*h # Volume of rectangular base 
print(vol_rect)
vol_pyramid = vol_rect # volume of pyramid == volume of rectangular metal
L = 6 #length of casted base
B = 10 # breadth of casted base
area_base = L*B # area of base
H = (3*vol_pyramid)/(area_base) #height of pyramid
print(H)
 