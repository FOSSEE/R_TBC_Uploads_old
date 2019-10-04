#page no. 280
#example 7-16


pk=function(k){choose(6,k)*(1/2^6)}
nk=function(k){exp(-((k-3)^2)/3)/(sqrt(3*22/7))}


table <- matrix(c(0,1,2,3,4,5,6,pk(0),pk(1),pk(2),pk(3),pk(4),pk(5),pk(6),nk(0),nk(1),nk(2),nk(3),nk(4),nk(5),nk(6)),ncol=7,byrow=TRUE)
#colnames(table) <- c("n")
rownames(table) <- c("k","Pk","N(n,sig)")
table<-as.table(table)
table

#the values of Pk varies a little bit from the book because of approximation 