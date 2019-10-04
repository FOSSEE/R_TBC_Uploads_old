#install.package(tseries)
library(tseries)
lathdata<-c(0.261,0.258,0.249,0.251,0.247,0.256,0.250,0.247,0.255,0.243,
           0.252,0.250,0.253,0.247,0.251,0.243,0.258,0.251,0.245,0.250,
           0.248,0.252,0.254,0.250,0.247,0.253,0.251,0.246,0.249,0.252,
           0.247,0.250,0.253,0.247,0.249,0.253,0.246,0.251,0.249,0.253)
LOC=0.01#level of significance
#mo=Arragment of sample data is random(null hypothesis)
#m1=There is frequently alternating pattern(alternative hypothesis)
z.alpha=qnorm(1-0.01)
#reject mo if z>z.alpha
data<-c()
mu=0.25
lathdata=lathdata[!lathdata %in% mu]
for(i in 1:length(lathdata)){
  if(lathdata[i]>mu){
    data[i]='a'}
  if(lathdata[i]<mu){
    data[i]='b'}
}
runs.test(factor(data),alternative = "g")
cat(" Since z = 2.98 exceeds 2.33, the null hypothesis of randomness must
be rejected")