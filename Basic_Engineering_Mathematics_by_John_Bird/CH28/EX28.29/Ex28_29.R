#page no. 302
# formula used: volume of frustum = pi*h*((r^2+R^2+R*r))/3
#               volume of cylinder = pi*r^2*h

D = 25 #diameter at bigger end
R = D/2
d = 12 #diameter at smaller end
r = d/2
H = 30 #height of tower
h = 12 #height of cylinder
l = H-h # height of frustum
vol_Cy =  pi*R^2*h #volume of cylinder
print(vol_Cy)
vol_f = pi*l*((r^2+R^2+R*r))/3 #volume of frustum
print(vol_f)

vol_tower = vol_Cy + vol_f
print(vol_tower)

vol_air_space = 0.6 * vol_tower
print(vol_air_space)