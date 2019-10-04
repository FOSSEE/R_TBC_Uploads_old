f <- function(x) {
  0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5
}

a=0
b=0.8
Qt=1.640533
Q=integrate(f,0,0.8)
cat("Computed=",Q$value,"\n","Error estimate=",abs(Q$value-Qt)*100/Qt,"\n")