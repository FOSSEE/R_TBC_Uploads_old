#probability of less than 3 tagged order form is:
#p3= p0+ p1+ p2


#probability of 0 tagged order form
p0<-dbinom(0, size=4,prob=0.1) #function dbinom() used
#probability of 1 tagged order form
p1<-dbinom(1, size=4,prob=0.1) 
#probability of 2 tagged order form
p2<-dbinom(2, size=4,prob=0.1) 
#probability of less than three tagged order
p3<- p0+p1+p2

p3
