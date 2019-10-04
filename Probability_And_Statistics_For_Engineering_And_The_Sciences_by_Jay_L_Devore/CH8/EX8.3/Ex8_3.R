#Ex8.3, Page 306
#Answers may vary slightly due to rounding off of values

#R9={9,10,......,20}
n<-20

#To find alpha=P(H0 rejected when p=.25)=P(X>=9 when X follows binomial dist.)
p<-0.25
alpha<-1-pbinom(8,n,p)
print(paste("Alpha value:",alpha))
print(paste("Type I error probability has reduced considerably when using R9 rather than R8 rejection region"))

#To find beta value=P(H0 not rejected)=P(X<=8 when X follows binomial dist.)
p1<-0.3       #1st case
beta1<-pbinom(8,n,p1)
print(paste("Beta(0.3)=",beta1))

p2<-0.5       #2nd case
beta2<-pbinom(8,n,p2)
print(paste("Beta(0.5)=",beta2))
print(paste("P(Type II error in R9)>P(Type II error in R8)"))