#The Agresti-Coull CI on a Proportion(Pg no. 294)

p = 0.12
n = 85
z = qnorm(0.025,lower.tail = FALSE)

ucl = (p+((z^2)/(2*n))+(z*sqrt(((p*(1-p))/n)+((z^2)/(4*(n^2))))))/(1+((z^2)/n))
lcl = (p+((z^2)/(2*n))-(z*sqrt(((p*(1-p))/n)+((z^2)/(4*(n^2))))))/(1+((z^2)/n))

cat("UCL =",round(ucl,digits = 4))
cat("LCL =",round(lcl,digits = 4))
#The answer may slightly vary due to rounding off values