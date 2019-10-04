#Example 7 Chapter 3 Page no. 106
n=4 # no. of toss
x=c(0,1,2,3,4)   # no of heads can be
p=1/2      #Prob of getting head
p_x = dbinom(x,n,p)
cat("expected no of head ",x%*%p_x)  