f <- function(x) {
  exp(x)
}

sum=1
test=0
i=0
term=1
x1= 10
x2= -10
while (sum~=test){
  cat("sum:",sum,"\n","term:",term,"\n","i:",i,"\n","-------------------------------------\n")
  i=i+1
  term=term*x/i
  test=sum
  sum=sum+term
}
cat("Exact Value",f(x1))
cat("Exact Value",f(x2))