damage<-c(2.8, 3.3, 3.4, 5.0, 8.5)
ts(damage, start=2001, end= 2005)
names(damage)<-c("2001", "2002", "2003", "2004", "2005")
plot.ts(damage,xlab="Year",ylab="Damage(in millions)")