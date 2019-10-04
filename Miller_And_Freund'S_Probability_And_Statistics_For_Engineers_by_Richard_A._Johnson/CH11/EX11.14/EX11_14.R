#Time taken by 10 mechine to assemble in morning x and afternoon y
x<-c(11.1,10.3,12.0,15.1,13.7,18.5,17.3,14.2,14.8,15.3)
y<-c(10.9,14.2,13.8,21.5,13.2,21.1,16.4,19.3,17.4,19.0)
plot(x,y,xlim=c(0,20),ylim=c(0,25))
r=cor(x,y)
r