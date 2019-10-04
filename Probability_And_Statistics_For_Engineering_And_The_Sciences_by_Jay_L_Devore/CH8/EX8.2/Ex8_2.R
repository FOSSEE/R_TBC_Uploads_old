#Ex8.2, Page 305
#Answers may vary slightly due to rounding off of values

m<-75
sd<-9
#Hypotheses H0: mean=75, H1: mean<75

#Experimental data
n<-25
sd<-9
#Standard deviation of normal distribution
sdx<-sd/sqrt(n)
print(paste("SD of normal distribution:",sdx))

#When H0 is true
mx<-75

#Consider rejection region x<=70.8
#To find alpha and beta

#P(type I error)
alpha<-pnorm(70.8,mx,sdx)
print(paste("Alpha value:",alpha))

#P(type II error)
mx<-c(72,70,67)                 #H0 is not rejected when it is false because mean= eg:72
for(i in mx){
  beta<-1-pnorm(70.8,i,sdx)
  print(paste("Beta value:",beta,"when mean is",i))
}

print(paste("Only",round(alpha,digits=3)*100,"% of all experiments will result into Type I error"))
print(paste("Possibility of Type II error decreases as mean value increases"))