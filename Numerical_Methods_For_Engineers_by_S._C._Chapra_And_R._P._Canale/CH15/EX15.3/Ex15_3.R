x1<-c(4.888889, 3.888889)
x2<-c(7, 11)
x3<-c(10, 8)
x4<-c(150, 175)
x5<-c(77, 80, 9, 6)
profit<-c(x1[1]*x4[1], x1[2]*x4[2])
total<-c(x1[1]*x3[1]+x1[2]*x3[2], x1[1]*x3[1]+x1[2]*x3[2], x1[1], x1[2], profit[1]+profit[2])
e=1000

while (e>total[5]){
  if (total[1]<=x5[1]){
    if (total[2]<=x5[2]){
      if (total[3]<=x5[3]){
        if (total[4]<=x5[4]){
          l=1
        }
      }
    }
  }
if (l==1){
  x1[1]=x1[1]+4.888889
  x1[2]=x1[2]+3.888889
  profit<-c(x1[1]*x4[1], x1[2]*x4[2])
  total[5]=profit[1]+profit[2]
}
}
cat("The maximized profit is=",total[5])
