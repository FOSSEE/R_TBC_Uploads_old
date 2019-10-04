#page no .95
#problem 17
#load package ---->measurements
library(measurements)
#functions:
area_wire = function(p,l,r)
{
  return(p*l/r)
}
#formula used: R = p*l/a
#given:
r = 5 #resistance of wire
l = 1.5 #lenght in kilmeter
l1 = conv_unit(l,'km','m')
p = 17.2 * 10^-6 # resistivity of wire in mm
p1 = conv_unit(p,'mm','m')
a = area_wire(p1,l1,r) #area of cross-section of wire
print(a) 