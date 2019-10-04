
# Chapter 3
# Example 3.10 page no. 86 from the pdf..
# Cumulative Distribution function..

# to find cummulative distribution of the example 3.9 
# refer Example 3.9 page no. 85 from the pdf.
# the probability distribution of the example is choose(4,x)/16 where x is from 0 to 4
a <- function(x){
  
  choose(4,x)/16
}


cat("The cummulative probability distribution of the above problem is "," ")

# ANswer..
for(i in 0:4){
  
  cat("  ", sum(a(0:i)))
}




