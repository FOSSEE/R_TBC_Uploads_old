#Ex16.11, Page 681

P<- function(p) {(1-p)^50+50*p*(1-p)^49+1225*p^2*(1-p)^48}

p<-c(0.01,0.02,0.03,0.04,0.05,0.06,0.07,0.08,0.09,0.10,0.12,0.15)

#Finding P(A) values
PA<-c(NULL)
for(i in 1:length(p)){
  PA[i]<-round(P(p[i]),digits=3)
}

df<-data.frame(p,PA)
print(df)

#To plot data
plot(p,PA,ylab="P(A)",main="Curve plotting P(A) and p values")