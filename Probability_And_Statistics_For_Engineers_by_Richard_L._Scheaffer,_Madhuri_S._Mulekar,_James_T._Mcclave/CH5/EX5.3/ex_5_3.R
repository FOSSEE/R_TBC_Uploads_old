a <- function(x){
  
  (0.8^x)*(0.2^(2-x))
}

# The Distribution..
cat("The  distribution function for b<0 is",0)

cat("The distribution function for 0<b<1 is",a(0))

cat("The distribution function for 1<b<2 is",2*a(1) + a(0))

cat("The distribution function for b>=2 is",a(2) + 2*a(1) + a(0) )

b= c(0,1,2,3)
fb= c(0,0.04,0.36,1)
plot(b,fb)

