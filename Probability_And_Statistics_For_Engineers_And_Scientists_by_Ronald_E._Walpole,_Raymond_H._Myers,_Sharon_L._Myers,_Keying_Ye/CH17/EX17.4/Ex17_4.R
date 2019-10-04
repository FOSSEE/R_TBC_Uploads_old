
# Chapter 17
# Example 17.4 page no. 701 from the pdf..
# Find Sample Size per subgroup..

# to find the sample size per subgroup producing a prob. of 0.5 that a process shift to p=p1= 0.05 will be detected.
#given in control prob. of a defective= 0.01

p = 0.01

p1 = 0.05

cat("The appropriate sample size is",(9/(p1-p)^2)*p*(1-p))




