s<-c('HHH','THH',' HTH','TTH','HHT',' THT','HTT','TTT')#Total sample space
x<-c(0,1,2,3)#Random variable for Head
p<-c(1/8,3/8,3/8,1/8)#Probability for 0,1,2,3 head
data.frame(x,p)
mean=sum(x*p)#mean=sum(x.f(x))
mean
