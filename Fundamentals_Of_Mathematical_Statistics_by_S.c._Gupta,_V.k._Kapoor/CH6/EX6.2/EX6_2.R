#Page number--6.11
#Example number--6.2
#LOAD PACKAGE---->prob

s=rolldie(2,makespace=TRUE)
s

#Part (a)
#E(X)
EX=sum(1/6*seq(1,6,,))
EX

#Part (b)
#Probability distribution on basis on sum of two faces of die
x=c(seq(2,12,1))
px=c(1/36,2/36,3/36,4/36,5/36,6/36,5/36,4/36,3/36,2/36,1/36)
a=data.frame(x,px)
a
EX=sum(a[1:11,1]*a[1:11,2])
EX
