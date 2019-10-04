#page no. 300
# formula used:volume of hemisphere =(2*pi*r^3)/3
#             volume of cone = (pi*r^2*h)/3
#             volume of cylinder = pi*r^2*h
#             surface area of hemisphere=(2*pi*r^2)+(pi*r^2)
#             curved surface area of cylinder= 2*pi*r*h
#             curved surface area of cone = pi*r*l
# <-----boiler----top-hemisphere
#                 middle-cylinder
#                 bottom-cone

len = 8 #length of cylinder
dia = 6 # diameter of cylinder
r = dia/2
h = 4 # height of cone
vol_h = (2*pi*r^3)/3 #volume of hemisphere
print(vol_h)

vol_Co = (pi*r^2*h)/3#volume of cone
print(vol_Co)

vol_Cy = pi*r^2*len#volume of cylinder 
print(vol_Cy)

vol_boiler = vol_Co + vol_Cy + vol_h
print(vol_boiler)


hypotenuse <- function (x, y)
{
  sqrt (x ^ 2 + y ^ 2)
}

l = hypotenuse(r,h) #slant height


sa_h =(2*pi*r^2)#surface area of hemisphere
sa_Co =pi*r*l   #curved surface area of cone
sa_Cy =2*pi*r*len#curved surface area of cylinder 

sa_total = sa_h + sa_Co + sa_Cy # total surface area  of boiler
print(sa_total)
