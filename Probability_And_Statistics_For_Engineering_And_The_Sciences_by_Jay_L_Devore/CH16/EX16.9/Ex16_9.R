#Ex16.9, Page 676

#Package to be installed: qcc(Quality control charts)
library(qcc)

mu0<-40
delta<-0.3
k<-delta/2
l<-mu0-k
r<-mu0+k
obs<-c(40.77,39.95,40.86,39.21,38.94,39.70,40.37,39.88,40.43,40.27,40.91,40.05,39.55,40.10,39.39,40.89,41.01,39.07,39.85,40.32,39.06,39.90,39.84,40.22,39.63,39.42,40.04,39.50,41.05,40.74,40.43,39.40,40.28,40.89,39.61,40.48,39.28,40.49,38.88,40.72,40.57,40.04,40.85,40.51,39.90,40.67,40.51,40.53,40.70,40.54,40.73,40.45,39.58,40.90,39.62,39.83,40.16,40.69,40.37,39.69,40.46,40.21,40.09,40.58)
sa<-c(rep(1,4),rep(2,4),rep(3,4),rep(4,4),rep(5,4),rep(6,4),rep(7,4),rep(8,4),rep(9,4),rep(10,4),rep(11,4),rep(12,4),rep(13,4),rep(14,4),rep(15,4),rep(16,4))
xbar<-c(40.20,39.72,40.42,39.98,40.06,39.76,39.65,40.41,40.32,39.84,40.49,40.40,40.61,39.98,40.23,40.34)

xbar1<-xbar-r
xbar2<-xbar-l

#To find d and e values
d0<-0
d1<-max(0,d0+(xbar[1]-r))
e0<-0
e1<-max(0,e0-(xbar[1]-l))

d<-c(d1)
e<-c(e1)
for(i in 2:length(xbar)){
  d[i]<-max(0,d[i-1]+(xbar[i]-r))
  e[i]<-max(0,e[i-1]-(xbar[i]-l))
}

df<-data.frame(xbar,xbar1,d,xbar2,e)
print(df)

q<-qcc.groups(data=obs,sample=sa)
c<-cusum(q,sizes=4,se.shift=delta,center=mu0)
print(summary(c))



