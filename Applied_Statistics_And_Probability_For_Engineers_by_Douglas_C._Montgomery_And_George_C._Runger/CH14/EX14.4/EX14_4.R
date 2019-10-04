#Surface Roughness(Pg no. 604)

n=2
k=3
init=9+7
a=10+12
b=9+11
ab=12+15
c=11+10
ac=10+13
bc=10+8
abc=16+14

A = (1/(4*n)) * (a+ab+ac+abc-init-b-c-bc)
A
SSa = ((a+ab+ac+abc-init-b-c-bc)^2)/(n*(2^k))
SSa