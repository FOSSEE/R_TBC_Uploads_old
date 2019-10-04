#Ex12.1, Page 470

i<-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30)
xi<-c(0.40,0.42,0.48,0.51,0.57,0.60,0.70,0.75,0.75,0.78,0.84,0.95,0.99,1.03,1.12,1.15,1.20,1.25,1.25,1.28,1.30,1.34,1.37,1.40,1.43,1.46,1.49,1.55,1.58,1.60)
yi<-c(1.02,1.21,0.88,0.98,1.52,1.83,1.50,1.80,1.74,1.63,2.00,2.80,2.48,2.47,3.05,3.18,3.76,3.68,3.82,3.21,4.27,3.12,3.99,3.75,4.10,4.18,3.77,4.34,4.21,4.92)
data<-data.frame(xi,yi,row.names=i)
print(data)

par(mfrow=c(1,3))
plot(xi,yi,main="Scatterplot",xlab="Width of palprebal fissure",ylab="OSA")
dotchart(xi,labels=row.names(xi),main="Dot plot of x values")
dotchart(yi,labels=row.names(yi),main="Dot plot of y values")
