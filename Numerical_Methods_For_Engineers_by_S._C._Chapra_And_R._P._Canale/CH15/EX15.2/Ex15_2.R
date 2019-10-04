x21<-matrix(0,8)
x22<-matrix(0,8)
x23<-matrix(0,8)
x24<-matrix(0,8)
x25<-matrix(0,8)
x26<-matrix(0,8)
for (x1 in 0:8){
  x21[x1+1]=-(7/11)*x1+7
  x22[x1+1]=(80-10*x1)/8
  x23[x1+1]=6
  x24[x1+1]=-150*x1/175
  x25[x1+1]=(600-150*x1)/175
  x26[x1+1]=(1400-150*x1)/175
}
x1=0:8


plot(x1,x24,main ='Z=0')
lines(x1,x25,main = 'Z=600')
lines(x1,x26,main = 'Z=1400')
plot(x1,x21,main = 'x2 vs x1')
plot(x1,x22,xlab = 'x1 (tonnes)')
plot(x1,x23,ylab = 'x2 (tonnes)')