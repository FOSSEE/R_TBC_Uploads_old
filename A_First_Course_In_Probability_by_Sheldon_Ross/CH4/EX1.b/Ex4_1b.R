#Chapter 4, Random Variables
#Example 1b, Page-118

#P calculates that the random variable X takes the value i
P <- function(i){
  x = choose(i-1,2)/choose(20,3)
  return(x)
}

ans = 0

# calculate the sum of probabilities from X=17 to 20
for(i in 17:20){
  ans = ans + P(i)
}
print(ans)

