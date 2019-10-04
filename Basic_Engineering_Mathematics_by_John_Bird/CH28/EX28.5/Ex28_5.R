#page no.291
#formula used: volume of cylinder = (area of cross-section)*length

out_dia = 25#outer diameter of pipe
in_dia = 12 #inner diameter of pipe
h = 2.5*100 #lenght of pipe (converted meter to centimeter)
area_of_cross_section = ((pi*out_dia^2)/4)-((pi*in_dia^2)/4)
print(area_of_cross_section)
volume = (area_of_cross_section)*h
print(volume)
