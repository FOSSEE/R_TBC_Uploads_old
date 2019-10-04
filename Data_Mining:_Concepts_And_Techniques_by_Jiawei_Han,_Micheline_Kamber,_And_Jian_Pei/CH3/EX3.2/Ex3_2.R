AllEle <- c(6,5,4,3,2)

Hightech <-c(20,10,14,5,5)


E_AllEle <- sum(AllEle)/length(AllEle)


All<- paste("$",E_AllEle)

print(All)



E_Hightech <- sum(Hightech)/length(Hightech)


hi <-paste("$",E_Hightech)

print(hi)


print("Covariance")


cov<- (sum(AllEle*Hightech)/length(AllEle))- (4*E_Hightech)

print(cov)