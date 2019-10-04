#Page number--10.26
#Example number--10.19

X=c(68,64,75,50,64,80,75,40,55,64)
Y=c(62,58,68,45,81,60,68,48,50,70)
RankX=c(4,6,2.5,9,6,1,2.5,10,8,6)
RankY=c(5,7,3.5,10,1,6,3.5,9,8,2)
d=RankX-RankY
data.frame(X,Y,RankX,RankY,d,d^2)

#Total correction
Correction=2*(4-1)/12+3*(9-1)/12

p=1-(6*(sum(d^2)+Correction+1/2))/(n*(n^2-1))
p
