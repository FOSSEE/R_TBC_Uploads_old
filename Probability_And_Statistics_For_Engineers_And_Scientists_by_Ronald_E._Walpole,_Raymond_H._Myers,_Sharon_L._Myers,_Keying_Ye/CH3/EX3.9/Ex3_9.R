# Chapter 3
# Example 3.9 page no. 85 from the pdf..
# Discrete Probability Distribution Problem..

# to find probability distribution of no. of cars with side airbags among next 4 cars, given prob. of selling is 0.5
# for ex. to sell 3 cars with air sidebags , partition 4 into two - with 3 bags and with 1 bag
# done in 4 choose 3 ways

# generalise 
cat("The probability distribution in this problem is:"," ")

for(i in 0:4){ 
  
  cat("  ",choose(4,i)/16)
  
  }
  




