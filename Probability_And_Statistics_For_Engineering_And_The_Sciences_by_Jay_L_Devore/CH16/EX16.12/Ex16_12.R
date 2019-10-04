#Ex16.12, Page 683
#Answers may vary slightly due to rounding off of values

#Package to be installed: AcceptanceSampling
library(AcceptanceSampling)

c<-0:15
np1<-c(0.051,0.355,0.818,1.366,1.970,2.613,3.285,3.981,4.695,5.425,6.169,6.924,7.690,8.464,9.246,10.040)
np2<-c(2.30,3.89,5.32,6.68,7.99,9.28,10.53,11.77,12.99,14.21,15.41,16.60,17.78,18.86,20.13,21.29)
p2_p1<-np2/np1
df1<-data.frame(c,np1,np2,p2_p1)
print(df1)
cat("\n")

AQL<-p1<-0.01
LTPD<-p2<-0.045

#Ratio of p2 to p1
r<-LTPD/AQL
print(paste("Ratio of p2 to p1:",r))

for(i in 1:length(c)){
  if(r>p2_p1[i+1] && r<p2_p1[i]){
    j<-i
    np_1<-np1[i]
    c1<-c[i]
    c2<-c[i+1]
    np_2<-np2[i+1]
    
  }
}
cat("Ratio lies between",p2_p1[j],"and",p2_p1[j+1],"values corresponding to c values",c[j],"and",c[j+1],"\n")

#Single sample plan: 1st c value
cat("When c value is",c1,"\n")

##To find sample size
n<-round(np_1/p1,digits=0)
print(paste("Sample size:",n))

##To find alpha and beta values
alpha1<-1-pbinom(c1,n,p1)
print(paste("Alpha value:",alpha1))

beta1<-pbinom(c1,n,p2)
print(paste("Beta value:",beta1))

#Single sample plan: 2nd c value
cat("When c value is",c2,"\n")

#To find sample size
n<-round(np_2/p2,digits=0)
print(paste("Sample size:",n))

##To find alpha and beta values
alpha2<-1-pbinom(c2,n,p1)
print(paste("Alpha value:",alpha2))

beta2<-pbinom(c2,n,p2)
print(paste("Beta value:",beta2))

