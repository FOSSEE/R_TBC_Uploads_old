#Ex2.23, Page 70
#Answers may vary slightly due to rounding off of values

#Total no of printers
n<-25
l<-10
i<-15

#Probability that 6 random printers selected will have 3 laser printers
r1<-6
r<-3
ND3<-(choose(l,r)*choose(i,r))/choose(n,r1)
cat("P(3 laser printers are selected among the 6 selected):",ND3,"\n")


#To find the probability that at least 3 inkjet printers are selected
prob<-0
for(j in 3:6){
  num<-choose(i,j)*choose(l,r1-j)
  denom<-choose(n,r1)
  prob<-prob+(num/denom)
}
cat("P(at least 3 inkjet printers are selected):",prob,"\n")
