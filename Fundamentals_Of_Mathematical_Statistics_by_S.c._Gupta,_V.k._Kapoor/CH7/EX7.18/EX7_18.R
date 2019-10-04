#Page number--7.34
#Example number--7.18
#Load Package----->prob

s=rolldie(2)
s

#From above table we find that
X=c(seq(2,12,1))
cases=c("(1,1)","(1,2),(2,1)","(1,3),(3,1),(2,2)","(1,4),(4,1),(2,3),(3,2)","(1,5),(5,1),(2,4),(4,2),(3,3)","(1,6),(6,1),(2,5),(5,2),(3,4),(4,3)","(2,6),(6,2),(3,5),(5,3),(4,4)","(3,6),(6,3),(4,5),(5,4)","(4,6),(6,4),(5,5)","(5,6),(6,5)","(6,6)")
prob=c(1/36,2/36,3/36,4/36,5/36,6/36,5/36,4/36,3/36,2/36,1/36)
a=data.frame(X,cases,prob)
a
EX=sum(X*prob)
EX
EX2=sum(X^2*prob)
EX2
VarX=EX2-EX^2
VarX
#By Chebychev's inequality
P=(35/6)/9
P
#Actual Probability
P1=1-(4+5+6+5+4)/36
P1