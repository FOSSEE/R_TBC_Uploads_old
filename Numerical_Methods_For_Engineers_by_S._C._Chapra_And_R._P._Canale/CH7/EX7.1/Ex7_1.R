f <- function(x) {
  (x-4)*(x+6)
}

n=2
a = matrix(0,3)
a[1]=-24
a[2]=2
a[3]=1
t=4
r=a[3]
a[3]=0
for (i in seq(n,1,-1)){
  s=a[i]
  a[i]=r
  r=s+r*t
  }
cat("The quptient is a(1)+a(2)*x where :","a(1)=",a[1],"a(2)=",a[2],"remainder=",r)