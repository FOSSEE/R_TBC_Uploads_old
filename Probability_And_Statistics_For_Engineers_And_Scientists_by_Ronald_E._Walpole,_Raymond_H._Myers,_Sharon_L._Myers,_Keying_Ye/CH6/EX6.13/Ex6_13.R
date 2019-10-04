 
# Chapter 6
# Example 6.13 page no. 185 from the pdf..
# Applications of Normal Distribution..

# given - avg score of the class- 74,sd=7..
# given - 12% score "A"s and grades followsa normal distribution

# to find the lowest possible score for A and highest for B..


cat("The percentile for 0.12 in this distribution is",qnorm(0.12,74,7,lower.tail = F),"marks")

cat("The lowest score for A is 83","and The highest score for B is 82")
