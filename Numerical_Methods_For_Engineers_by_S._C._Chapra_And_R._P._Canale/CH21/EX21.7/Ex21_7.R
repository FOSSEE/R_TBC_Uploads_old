f <- function(x) {
  (0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5)
}
func<-matrix(0,11)
tval=1.640533
x<-c(0, 0.12, 0.22, 0.32, 0.36, 0.4, 0.44, 0.54, 0.64, 0.7, 0.8)
for (i in 1:11){
  func[i]=f(x[i])
}
l=0
for (i in 1:10){
  l=l+(x[i+1]-x[i])*(func[i]+func[i+1])/2
}

cat("l=",l)
Et=tval-l
#error
et=Et*100/tval
#percent relative error
cat("The Error Et=",Et,"\n","The percent relative error et=",et,"%")