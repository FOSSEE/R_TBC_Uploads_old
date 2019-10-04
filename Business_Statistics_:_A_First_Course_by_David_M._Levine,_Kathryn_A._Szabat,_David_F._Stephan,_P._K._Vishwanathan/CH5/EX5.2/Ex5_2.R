#probability of 4 tagged order form
p4<- dbinom(4, size=4,prob=0.1) #function dbinom() used

#probability of 3 tagged order form
p3<-dbinom(3, size=4,prob=0.1) 
#probability of atleast three tagged order
p<- p3+p4

p
