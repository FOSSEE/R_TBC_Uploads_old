
# Chapter 3
# Example 3.16 page no. 98 from the pdf..
# Marginal Distribution Problem

# to find marignal Distribution Of X alone and Y alone..

c <- as.data.frame(matrix(c(3/28,3/14,1/28,9/28,3/14,0,3/28,0,0),ncol = 3))

colnames(c) <- c("x0","x1","x2")

rownames(c) <- c("y1","y2","y3")

cat("The marginal distribution of X alone is",apply(as.matrix(c),2,sum),"and the marginal distributions of Y alone is",apply(as.matrix(c),1,sum))

# Example 3.17 is theoretical..
