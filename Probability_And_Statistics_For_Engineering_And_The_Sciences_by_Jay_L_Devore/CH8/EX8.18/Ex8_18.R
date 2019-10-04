#Ex8.18, Page 335

#H0: mu=4
#Ha: mu!=4

n<-5
t<-round(-0.594,digits=1)
df<-n-1

alpha<-0.05

#To find critical values
a<-qt(1-alpha/2,df=n-1)

#Since test is two tailed
p<-2*pt(t,df=n-1)
print(paste("P-value:",round(p,digits=2)))

b<-c(0.01,0.05,0.1)
for(i in b){
  if(p>i)
    print(paste("H0 is not rejected at significance level",i))
  else
    print(paste("H0 rejected at significance level",i))
}



