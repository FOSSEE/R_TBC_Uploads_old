#page no. 302
# formula used: volume of frustum = pi*h*((r^2+R^2+R*r))/3

D = 6 #diameter at bigger end
R = D/2
d = 4 #diameter at smaller end
r = d/2
h = 3.6
vol = pi*h*((r^2+R^2+R*r))/3 #volume of frustum
print(vol)
