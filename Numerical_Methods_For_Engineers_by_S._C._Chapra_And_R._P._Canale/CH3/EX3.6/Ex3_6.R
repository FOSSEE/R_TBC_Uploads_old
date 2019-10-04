readinteger <- function()
{ 
  n <- readline(prompt="Input a number: ")
  return(as.integer(n))
}

num<-readinteger()

sum=0
for (i in 1:100000){
  sum=sum+num
}
cat("The number summed up 100,000 times is=",sum)