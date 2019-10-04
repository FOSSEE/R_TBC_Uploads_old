
# Chapter 6 
# Example 6.3 page no. 179 from the pdf..
# Normal Distribution..

# to find the k such that..

cat("The value of k such that P(Z>k)= 0.3015 is",qnorm(0.3015,lower.tail = F))

cat("The value of k such that P(k<z<-0.18)=0.4197 is",qnorm(pnorm(-0.18)-0.4197))

