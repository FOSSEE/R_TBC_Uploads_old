#Given
x<-c(0,1,2,3)
prob<-c(0.18,0.50,0.29,0.03)
#Mean of probabilites
mu=weighted.mean(x,prob)
message("Mean is :",mu)
