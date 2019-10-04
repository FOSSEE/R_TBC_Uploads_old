#Ex3.16, Page 107

x<-1:7
w<-c(0.01,0.03,0.13,0.25,0.39,0.17,0.02)

#Mean, m=sum of(xp(x))
m<-weighted.mean(x,w)
print(paste("Population mean =",m))