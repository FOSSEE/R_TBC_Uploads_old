m=68.1
#kg
v=40
#m/s
t=10
#s
g=9.8
#m/s^2

f <- function(c) {
  g*m*(1-exp(-c*t/m))/c - v
}

cat("For various values of c and f(c) is found as:")
i=0
fc = matrix(0,5)
for (c in seq(4,20,4)){
  i=i+1
  bracket=c(c, f(c))
  cat(bracket)
  fc[i]=f(c)
}
c<-c(4, 8, 12, 16, 20)
plot(c,fc,main = 'f(c) vs c',xlab = 'c',ylab = 'f(c) (m/s)')
lines(c,fc)