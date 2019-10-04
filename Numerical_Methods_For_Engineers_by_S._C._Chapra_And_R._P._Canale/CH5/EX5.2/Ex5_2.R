f <- function(x) {
  sin(10*x)+cos(3*x)
}

count=1
val = matrix(0,100)
func = matrix(0,100)
for (i in seq(1,5,0.05)){
  val[count]=i
  func[count]=f(i)
  count=count+1
}
plot(val,func,main = "x vs f(x)",xlab = 'x',ylab = 'f(x)')
lines(val,func)