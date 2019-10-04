#Ex3.17, Page 107

x<-0:10
w<-c(0.002,0.001,0.002,0.005,0.02,0.04,0.18,0.37,0.25,0.12,0.01)

#Mean, m= sum of(xp(x))
m<-weighted.mean(x,w)
print(paste("Population mean, E(X) =",m))