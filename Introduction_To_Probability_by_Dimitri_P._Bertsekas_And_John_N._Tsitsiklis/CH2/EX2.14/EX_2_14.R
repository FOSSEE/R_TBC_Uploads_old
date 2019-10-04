#EX_2_14
#page 34
#E[X]iseasily calculated using the total expectation theorem as
p<-numeric(3)
t<-numeric(3)
ex<-numeric(3)
p<-c(0.5,0.3,0.2)
t<-c(0.05,0.1,0.3)
for(i in 1:3)
{
  ex[i]<-prod(p[i],t[i])
}
sum(ex)#E(x) is simpley calculated using total expectation theorem