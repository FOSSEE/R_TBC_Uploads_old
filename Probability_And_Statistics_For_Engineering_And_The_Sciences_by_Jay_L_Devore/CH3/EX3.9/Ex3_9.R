#Ex3.9, Page 98
#X=0 if customer purchases laptop computer
#X=1 if customer purchases desktop computer
#p(0)
p0<-80/100
print(paste("Probability that next customer purchases laptop model:",p0))
p1<-20/100
print(paste("Probability that next customer purchases desktop model:",p1))
p1<-c(0.8,0.2,0)
row.names<-c("if x=0","if x=1","if (x!=0 or 1)")
column.names<-c("")
matrix.names<-c("p(x)")
p<-array(c(p1),dim=c(3,1,1),dimnames=list(row.names,column.names,matrix.names))
print(p)
a<- 1
p<- dbinom(a, size = 1, prob = 0.2)
plot(1, p, type = 'h', xlab = 'x', ylab = 'p(x)')