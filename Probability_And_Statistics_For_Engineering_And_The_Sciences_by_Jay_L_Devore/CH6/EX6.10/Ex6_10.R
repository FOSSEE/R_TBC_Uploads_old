#Ex6.10, Page 251
#Answers may vary slightly due to rounding off of values

n<-25
p<-0.6
q<-1-p

#To find estimated standard error
sp1<-sqrt((p*q)/n)
print(paste("Estimated standard error:",sp1))

#pq is largest when
p<-q<-0.5
sp2<-sqrt((p*q)/n)
print(paste("Estimated standard error when pq is largest:",sp2))

