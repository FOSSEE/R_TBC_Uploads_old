#Page number--10.25
#Example number--10.18

n=10
a=c(1,6,5,10,3,2,4,9,7,8)
b=c(3,5,8,4,7,10,2,1,6,9)
c=c(6,4,9,8,1,2,3,10,5,7)
d1=a-b
d2=a-c
d3=b-c
data.frame(a,b,c,d1,d2,d3,d1^2,d2^2,d3^2)

#Rank correlation coefficient
Pab=1-(6*sum(d1^2))/(n*(n^2-1))
Pab
Pac=1-(6*sum(d2^2))/(n*(n^2-1))
Pac
Pbc=1-(6*sum(d3^2))/(n*(n^2-1))
Pbc
