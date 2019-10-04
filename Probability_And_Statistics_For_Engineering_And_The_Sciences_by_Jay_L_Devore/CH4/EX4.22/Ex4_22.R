#Ex4.22, Page 167
#Answer may slightly vary due to rounding off of value

alpha<-0.5

#P(X>2)=1-P(X<=2)
x<-2
p<-1-pexp(x,alpha)
print(paste("P(X>2)=",p))

t<-1/alpha
print(paste("The expected time between successive calls is",t,"days"))
