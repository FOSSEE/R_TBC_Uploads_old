#Ex5.18, Page 210

x<-c(-4,4,2,-2)
y<-c(1,-1,2,-2)
xy<-x*y
w<-c(1/4,1/4,1/4,1/4)
m<-weighted.mean(xy,w)
print(paste("E(XY)=",m))

#Cov(XY)=E(XY)-ux.uy
ux<-0
uy<-0
cov<-m-(ux*uy)
print(paste("Cov(XY)=",cov))

print(paste("Complete absence of any linear relationship"))

#To scatterplot
df<-data.frame(x,y)
plot(x,y)
