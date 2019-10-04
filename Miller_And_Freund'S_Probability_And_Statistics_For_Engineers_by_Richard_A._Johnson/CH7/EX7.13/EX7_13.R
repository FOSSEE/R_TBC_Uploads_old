#Poisson distribution of defective hard drive for ten day
Data<-c(7,3,1,2,4,1,2,3,1,2)
T=sum(Data)
lamda=T/10
#the maximum likelihood estimate is
#P(X=0 or 1)
P=exp(1)^(-lamda)+(lamda*exp(1)^(-lamda))
P
cat("There  for there will be 1 or fewer defectives on just over one-quarter of the days.")
